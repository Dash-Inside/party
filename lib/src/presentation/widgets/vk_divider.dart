import 'package:flutter/material.dart';

class VkDivider extends StatelessWidget {
  final EdgeInsets padding;
  const VkDivider({
    super.key,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Divider(
        height: 1,
        indent: 16,
        endIndent: 16,
      ),
    );
  }
}
