import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  static const avatarRadius = 36.0;
  static const avatarPadding = EdgeInsets.symmetric(
    vertical: 12.0,
  );

  static const separatorWidth = 12.0;
  static const separatorHeight = 3.0;

  final EdgeInsets padding;
  final String nickname;
  final String stuf;

  const ProfileCard({
    super.key,
    required this.padding,
    required this.nickname,
    required this.stuf,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: padding,
      child: Row(
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
              SizedBox(
                height: separatorHeight,
              ),
              Text(
                stuf,
                style: textTheme.labelLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
