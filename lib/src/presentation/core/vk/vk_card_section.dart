import 'package:flutter/material.dart';

class VkCardSection extends StatelessWidget {
  static const _contentPadding = EdgeInsets.symmetric(vertical: 12.0);
  static const _horizontalPadding = EdgeInsets.symmetric(horizontal: 12.0);

  final Widget child;

  const VkCardSection({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _horizontalPadding,
      child: Column(
        children: [
          Divider(
            height: 1.0,
            thickness: 1.0,
            color: Theme.of(context).highlightColor,
          ),
          Container(
            width: double.infinity,
            padding: _contentPadding,
            child: child,
          ),
        ],
      ),
    );
  }
}
