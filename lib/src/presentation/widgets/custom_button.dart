import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 270),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xFF2D81E0),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
            ),
            child: Center(
              child: Text(title),
            ),
          ),
        ),
      ),
    );
  }
}
