import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  static const avatarRadius = 36.0;
  static const avatarPadding = EdgeInsets.symmetric(vertical: 6.0);

  static const separatorWidth = 12.0;

  final String nickname;
  final String info;

  const ProfileCard({
    super.key,
    required this.nickname,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: avatarPadding,
          child: CircleAvatar(
            radius: avatarRadius,
          ),
        ),
        SizedBox(
          width: separatorWidth,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nickname,
              style: textTheme.bodyLarge,
            ),
            Text(
              info,
              style: textTheme.labelLarge,
            ),
          ],
        ),
      ],
    );
  }
}
