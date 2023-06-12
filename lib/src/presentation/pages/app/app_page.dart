import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party/src/presentation/core/l10n/app_l10n.dart';
import 'package:party/src/presentation/core/vk/vk_app_bar.dart';
import 'package:party/src/presentation/core/vk/vk_card_section.dart';
import 'package:party/src/presentation/core/vk/vk_icon_button.dart';
import 'package:party/src/presentation/core/vk/vk_switch_card.dart';
import 'package:party/src/presentation/pages/app/bloc/app_bloc.dart';
import 'package:party/src/presentation/pages/app/widgets/profile_card.dart';
import 'package:party/src/presentation/pages/app/widgets/search_profile_card.dart';
import 'package:party/src/presentation/pages/app/widgets/settings.dart';
import 'package:party/src/presentation/pages/app/widgets/settings_button.dart';
import 'package:party/src/presentation/pages/app/widgets/teammate_list_element.dart';

part './components/etc_tab.dart';
part './components/search_tab.dart';
part './components/teammates_tab.dart';

class AppPage extends StatelessWidget {
  static const route = '/';

  static const _searchPage = 0;
  static const _teammatePage = 1;
  static const _etcPage = 2;

  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AppBloc appBloc = BlocProvider.of<AppBloc>(context);
    appBloc.add(AppEvent.load());

    PageController? pageController;

    void _stateListener(BuildContext _, AppState state) {
      state.mapOrNull(
        page: (pageState) {
          pageController?.jumpToPage(
            pageState.appPage.map(
              search: (_) => _searchPage,
              teammate: (_) => _teammatePage,
              etc: (_) => _etcPage,
            ),
          );
        },
      );
    }

    Widget _stateBuilder(BuildContext context, AppState state) {
      final ColorScheme colorScheme = Theme.of(context).colorScheme;

      return state.map(
        loading: (_) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                color: colorScheme.primary,
                strokeWidth: 1.0,
              ),
            ),
          );
        },
        page: (pageAppState) {
          pageController = PageController();

          int getIndexSelected() {
            return pageAppState.appPage.map<int>(
              search: (_) => _searchPage,
              teammate: (_) => _teammatePage,
              etc: (_) => _etcPage,
            );
          }

          void onNavIconTap(int index) {
            final indexMap = <int, AppPageState>{
              _searchPage: AppPageState.search(),
              _teammatePage: AppPageState.teammate(),
              _etcPage: AppPageState.etc(),
            };

            final page = indexMap[index];
            if (page != null) {
              return appBloc.add(AppEvent.onPageChange(state: page));
            }
          }

          return Scaffold(
            appBar: VkAppBar(
              context,
              title: pageAppState.appPage.map(
                search: (_) => AppL10n.searchTabTitle.$,
                teammate: (_) => AppL10n.teammatesTabTitle.$,
                etc: (_) => AppL10n.etcTabTitle.$,
              ),
              showSettingLeading: pageAppState.appPage.map(
                search: (_) => true,
                teammate: (_) => false,
                etc: (_) => false,
              ),
            ),
            body: PageView(
              controller: pageController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                SearchTab(),
                TeammatesTab(),
                EtcTab(),
              ],
            ),
            bottomNavigationBar: BottomBarDefault(
              onTap: onNavIconTap,
              indexSelected: getIndexSelected(),
              items: <TabItem<IconData>>[
                TabItem(
                  icon: Icons.search_rounded,
                  title: AppL10n.searchTabTitle.$,
                ),
                TabItem(
                  icon: Icons.history_rounded,
                  title: AppL10n.teammatesTabTitle.$,
                ),
                TabItem(
                  icon: Icons.menu_rounded,
                  title: AppL10n.etcTabTitle.$,
                ),
              ],
              color: Colors.black,
              colorSelected: colorScheme.primary,
              backgroundColor: colorScheme.background,
            ),
          );
        },
        failure: (failure) {
          return Scaffold(
            body: Center(
              child: Text(
                'Server Error',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          );
        },
      );
    }

    return BlocConsumer(
      bloc: appBloc,
      builder: _stateBuilder,
      listener: _stateListener,
    );
  }
}
