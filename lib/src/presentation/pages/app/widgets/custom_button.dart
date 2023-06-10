import 'package:flutter/material.dart';

/// ! DEPRECATED.
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
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(8),
          ),
          width: double.infinity,
          margin: EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Center(
              child: Text(title),
            ),
          ),
        ),
      ),
    );
  }
}
