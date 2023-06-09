import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:party/src/presentation/widgets/bottom_nav_bar.dart';
import 'package:party/src/presentation/widgets/custom_button.dart';
import 'package:party/src/presentation/widgets/panel_header.dart';
import 'package:party/src/presentation/widgets/profile.dart';
import 'package:party/src/presentation/widgets/vk_divider.dart';

class SearchPage extends StatelessWidget {
  final String userInformation;
  const SearchPage({
    super.key,
    required this.userInformation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PanelHeader(
            title: 'Поиск',
            icon: Icons.flag_outlined,
          ),
          VkDivider(
            padding: EdgeInsets.all(8),
          ),
          Spacer(),
          _Content(
            userInformation: 'Информация о пользователе',
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final String userInformation;
  const _Content({
    required this.userInformation,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Profile(
              padding: EdgeInsets.all(16),
              stuf: 'Москва',
              nickname: 'Алексей',
            ),
            SizedBox(
              child: Text(userInformation),
            ),
            Spacer(),
            CustomButton(
              title: 'Написать специальное сообщение',
            ),
          ],
        ),
      ),
    );
  }
}
