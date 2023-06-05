import 'package:flutter/material.dart';

class VkDivider extends StatelessWidget {
  const VkDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Divider(
        indent: 16,
        endIndent: 16,
      ),
    );
  }
}
