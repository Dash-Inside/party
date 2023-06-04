import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
        label: '',
        icon: Icon(Icons.abc),
      ),
      BottomNavigationBarItem(
        label: '1',
        icon: Icon(Icons.abc),
      ),
    ]);
  }
}
