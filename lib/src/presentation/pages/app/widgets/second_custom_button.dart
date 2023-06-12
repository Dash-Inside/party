import 'package:flutter/material.dart';

class SecondCustomButton extends StatelessWidget {
  static const buttonBorderRadius = const BorderRadius.all(Radius.circular(10));

  static const buttonTextStyle = TextStyle(
    fontFamily: 'Roboto',
    color: Colors.white,
    fontSize: 16,
    letterSpacing: 0.15,
    fontWeight: FontWeight.w500,
  );

  final String title;
  final Color backColor;
  final Color textColor;
  const SecondCustomButton({
    required this.title,
    this.backColor = const Color(0xFF2D81E0),
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: buttonBorderRadius),
        backgroundColor: backColor,
      ),
      child: Text(
        title,
        style: buttonTextStyle.copyWith(color: textColor),
      ),
    );
  }
}
