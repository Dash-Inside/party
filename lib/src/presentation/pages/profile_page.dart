import 'package:flutter/material.dart';
import 'package:party/src/presentation/widgets/bottom_nav_bar.dart';
import 'package:party/src/presentation/widgets/panel_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Column(
        children: [
          PanelHeader(),
          Divider(),
          _Content(),
        ],
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(children: [
        Row(
          children: [
            CircleAvatar(),
            Column(
              children: [
                Text('Алексей Мазелюк'),
                Text('Санкт-Петербург'),
              ],
            ),
          ],
        ),
        Divider(),
        Row(
          children: [
            Text('Учавствовать в подборе'),
            Spacer(),
            Switch(
              value: false,
              onChanged: (_) => !_,
            ),
          ],
        ),
        Text('Ваш аккаунт будет отображаться в системе подбора игроков'),
        Divider(),
        Row(
          children: [
            Icon(Icons.help_outline_outlined),
            Text('Помощь'),
          ],
        ),
        Row(
          children: [
            Icon(Icons.info_outline),
            Text('О приложении'),
          ],
        ),
      ]),
    );
  }
}
