import 'package:flutter/material.dart';

/// ! DEPRECATED.
class ProfileCard extends StatelessWidget {
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
    return Padding(
      padding: padding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 36,
            backgroundColor: Colors.amber,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nickname,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.1,
                ),
              ),
              Text(
                stuf,
                style: TextStyle(
                  color: Color(0xFF818C99),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
