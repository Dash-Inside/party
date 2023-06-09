import 'package:flutter/material.dart';

class PanelHeader extends StatelessWidget {
  final IconData? icon;
  final String title;
  const PanelHeader({
    super.key,
    this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Icon(icon),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 23, fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ],
    );
  }
}
