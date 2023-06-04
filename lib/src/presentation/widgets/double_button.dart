import 'package:flutter/material.dart';

class DoubleButton extends StatelessWidget {
  const DoubleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            child: Icon(
              Icons.more_horiz_outlined,
            ),
          ),
          InkWell(
            child: Icon(Icons.close),
          )
        ],
      ),
    );
  }
}
