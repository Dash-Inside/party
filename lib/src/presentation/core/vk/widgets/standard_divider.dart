import 'package:flutter/material.dart';

class StandardDivider extends StatelessWidget {
  static const dividerIndent = 12.0;
  static const dividerEndIndent = 12.0;
  static const dividerThickness = 0.5;
  final EdgeInsets padding;

  const StandardDivider({
    super.key,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0),
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: dividerIndent,
      endIndent: dividerEndIndent,
      thickness: dividerThickness,
    );
  }
}
