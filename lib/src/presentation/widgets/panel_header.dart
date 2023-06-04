import 'package:flutter/material.dart';
import 'package:party/src/presentation/widgets/double_button.dart';

class PanelHeader extends StatelessWidget {
  const PanelHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Ещё'),
        Spacer(),
        DoubleButton(),
      ],
    );
  }
}
