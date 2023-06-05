import 'package:flutter/material.dart';

class DoubleButton extends StatelessWidget {
  const DoubleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: false,
      color: Color(0xFF282B2E).withOpacity(0.2),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.more_horiz_outlined,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
          SizedBox(
            height: 24,
            child: VerticalDivider(
              color: Colors.white.withOpacity(0.12),
              width: 1,
            ),
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}
