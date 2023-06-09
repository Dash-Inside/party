import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  final EdgeInsets padding;
  final String nickname;
  final String stuf;
  const Profile({
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
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  letterSpacing: 0.1,
                ),
              ),
              Text(
                stuf,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  letterSpacing: 0.2,
                  color: Color(0xFF818C99),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
