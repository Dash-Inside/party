import 'package:flutter/material.dart';
import 'package:party/src/presentation/core/vk/vk_app_bar.dart';
import 'package:party/src/presentation/pages/app/components/etc_tab.dart';
import 'package:party/src/presentation/pages/app/components/search_tab.dart';
import 'package:party/src/presentation/pages/app/components/teammates_tab.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VkAppBar(
        title: 'Dynamic',
      ),
      body: TabBar(
        tabs: <Widget>[
          SearchTab(),
          TeammatesTab(),
          EtcTab(),
        ],
      ),
    );
  }
}
