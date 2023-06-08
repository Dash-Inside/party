import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:party/src/presentation/widgets/bottom_nav_bar.dart';
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
          VkDivider(),
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
            CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 270),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xFF2D81E0),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
            ),
            child: Center(
              child: Text('Написать специальное сообщение'),
            ),
          ),
        ),
      ),
    );
  }
}
