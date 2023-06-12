import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party/src/presentation/core/vk/vk_app_bar.dart';
import 'package:party/src/presentation/pages/app/bloc/app_bloc.dart';
import 'package:party/src/presentation/pages/app/widgets/profile_card.dart';

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
    PageController? pageController;

    final AppBloc appBloc = BlocProvider.of<AppBloc>(context);
    appBloc.add(AppEvent.load());

    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    void _onStateChange(BuildContext _, AppState state) {
      debugPrint(state.toString());
      state.mapOrNull(
        page: (page) {
          pageController?.jumpToPage(
            page.appPage.map(
              search: (_) => _searchPage,
              teammate: (_) => _teammatePage,
              etc: (_) => _etcPage,
            ),
          );
        },
      );
    }

    void _onPageChange(int index) {
      final indexMap = <int, AppPageState>{
        0: AppPageState.search(),
        1: AppPageState.teammate(),
        2: AppPageState.etc(),
      };

      return appBloc.add(AppEvent.onPageChange(
        state: indexMap[index] ?? AppPageState.search(),
      ));
    }

    int _getSelectedIndex() {
      final page = appBloc.state.mapOrNull<int>(page: (page) {
        return page.appPage.map<int>(
          search: (_) => _searchPage,
          teammate: (_) => _teammatePage,
          etc: (_) => _etcPage,
        );
      });

      return page ?? _searchPage;
    }

    return BlocConsumer<AppBloc, AppState>(
      listener: _onStateChange,
      builder: (context, state) {
        return Scaffold(
          appBar: VkAppBar(
            context,
            title: state.map(
              loading: (_) => 'Loading',
              page: (value) => value.appPage.map(
                search: (_) => 'Search',
                teammate: (_) => 'Teammate',
                etc: (_) => 'Etc',
              ),
              failure: (_) => 'Failure',
            ),
          ),
          body: Builder(
            builder: (context) {
              return state.map(
                loading: (_) {
                  return Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 1.0,
                    ),
                  );
                },
                page: (_) {
                  pageController = PageController();

                  return PageView(
                    controller: pageController,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SearchTab(),
                      TeammatesTab(),
                      EtcTab(),
                    ],
                  );
                },
                failure: (failure) {
                  return Center(
                    child: Text(
                      'Server Error',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  );
                },
              );
            },
          ),
          bottomNavigationBar: BottomBarDefault(
            indexSelected: _getSelectedIndex(),
            items: const <TabItem<IconData>>[
              TabItem(icon: Icons.search_rounded),
              TabItem(icon: Icons.history_rounded),
              TabItem(icon: Icons.menu_rounded),
            ],
            backgroundColor: colorScheme.background,
            onTap: _onPageChange,
            color: Colors.black,
            colorSelected: colorScheme.primary,
          ),
        );
      },
      bloc: appBloc,
    );
  }
}
