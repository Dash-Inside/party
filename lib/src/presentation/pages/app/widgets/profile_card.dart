import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  static const avatarRadius = 36.0;
  static const avatarPadding = EdgeInsets.symmetric(
    vertical: 16.0,
  );

  static const separatorWidth = 12.0;

  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: avatarRadius,
        ),
        SizedBox(
          width: separatorWidth,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Alexei',
              style: textTheme.bodyLarge,
            ),
            SizedBox(
              height: separatorHeight,
            ),
            Text(
              'Peter',
              style: textTheme.labelLarge,
            ),
          ],
        ),
      ],
    );
  }
}
