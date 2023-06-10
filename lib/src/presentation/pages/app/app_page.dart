import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party/src/presentation/core/vk/vk_app_bar.dart';
import 'package:party/src/presentation/pages/app/bloc/app_bloc.dart';
import 'package:party/src/presentation/pages/app/widgets/custom_button.dart';
import 'package:party/src/presentation/pages/app/widgets/profile_card.dart';

part './components/etc_tab.dart';
part './components/search_tab.dart';
part './components/teammates_tab.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  static const route = '/';

  @override
  Widget build(BuildContext context) {
    final AppBloc appBloc = BlocProvider.of<AppBloc>(context);
    appBloc.add(AppEvent.load());

    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    final PageController pageController = PageController();

    int _indexSelected = 0;

    void onPageChange(int index) {
      //TODO: implement bloc
      appBloc.add(PageChangeAppEvent(page: index));
      _indexSelected = index;
      debugPrint(_indexSelected.toString() + 'a');
    }

    return Scaffold(
      appBar: VkAppBar(
        context,
        title: 'Dynamic',
      ),
      body: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return state.map(
            loading: (_) {
              return Center(
                child: CircularProgressIndicator(
                  strokeWidth: 1.0,
                ),
              );
            },
            page: (_) {
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
        bloc: appBloc,
      ),
      bottomNavigationBar: BottomBarDefault(
        items: const <TabItem<IconData>>[
          TabItem(icon: Icons.search_rounded),
          TabItem(icon: Icons.history_rounded),
          TabItem(icon: Icons.menu_rounded),
        ],
        indexSelected: _indexSelected,
        backgroundColor: colorScheme.background,
        onTap: onPageChange,
        color: Colors.black,
        colorSelected: colorScheme.primary,
      ),
    );
  }
}
