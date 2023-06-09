import 'package:flutter/material.dart';
import 'package:party/src/presentation/core/vk/vk_app_bar.dart';
import 'package:party/src/presentation/widgets/bottom_nav_bar.dart';
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
  late final PageController controller = PageController();
  int page = 0;

  @override
  void setState(VoidCallback fn) {
    controller.jumpToPage(page);
    super.setState(fn);
  }

  void _onNavButtonTap(int value) {
    setState(() {
      page = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VkAppBar(
        title: 'Dynamic',
      ),
      body: PageView(
        controller: controller,
        children: [
          SearchTab(),
          TeammatesTab(),
          EtcTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onNavButtonTap,
        items: const [
          BottomNavigationBarItem(
            label: '0',
            icon: Icon(
              Icons.search_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: '1',
            icon: Icon(
              Icons.history_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: '2',
            icon: Icon(
              Icons.menu_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
