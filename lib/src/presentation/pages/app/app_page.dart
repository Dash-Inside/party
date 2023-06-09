import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:party/src/presentation/core/vk/vk_app_bar.dart';
import 'package:party/src/presentation/widgets/custom_button.dart';
import 'package:party/src/presentation/widgets/custom_divider.dart';
import 'package:party/src/presentation/widgets/panel_header.dart';
import 'package:party/src/presentation/widgets/profile.dart';

part './components/etc_tab.dart';
part './components/search_tab.dart';
part './components/teammates_tab.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  static const route = '/';

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> with SingleTickerProviderStateMixin {
  final PageController controller = PageController(initialPage: 0);

  void onPageChange(int page) {
    setState(() {
      controller.jumpToPage(page);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VkAppBar(
        context,
        title: 'Dynamic',
      ),
      body: PageView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        children: [
          SearchTab(),
          TeammatesTab(),
          EtcTab(),
        ],
      ),
      bottomNavigationBar: BottomBarDefault(
        onTap: onPageChange,
        color: Colors.black,
        colorSelected: Colors.black,
        backgroundColor: Theme.of(context).colorScheme.background,
        items: const <TabItem<IconData>>[
          TabItem(
            icon: Icons.search_rounded,
          ),
          TabItem(
            icon: Icons.history_rounded,
          ),
          TabItem(
            icon: Icons.menu_rounded,
          ),
        ],
      ),
    );
  }
}
