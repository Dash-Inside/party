import 'package:flutter/material.dart';
import 'package:party/src/presentation/pages/app/app_page.dart';

class SettingsButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const SettingsButton({
    required this.icon,
    required this.text,
    this.color = const Color(0xFF2688EB),
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: GestureDetector(
        onTap: () => null,
        child: Row(
          children: [
            Icon(
              icon,
              color: color,
              size: EtcTab.settingButtonIconSize,
            ),
            SizedBox(
              width: EtcTab.settingButtonIconSeparatorWidth,
            ),
            Expanded(
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
