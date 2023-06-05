import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
        label: 'Поиск',
        icon: Icon(Icons.search),
      ),
      BottomNavigationBarItem(
        label: 'История',
        icon: Icon(Icons.history),
      ),
      BottomNavigationBarItem(
        label: 'Еще',
        icon: Icon(Icons.menu_rounded),
      ),
    ]);
  }
}
