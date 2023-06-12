import 'package:flutter/material.dart';

class VkCardSection extends StatelessWidget {
  static const _topPadding = EdgeInsets.only(top: 12.0);

  final Widget child;

  const VkCardSection({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: _topPadding,
      child: child,
    );
  }
}
