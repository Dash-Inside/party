import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:party/src/presentation/widgets/double_button.dart';

class PanelHeader extends StatelessWidget {
  final IconData? icon;
  final String title;
  const PanelHeader({
    super.key,
    this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Icon(icon),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w300,
                  fontSize: 23,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(12),
          child: DoubleButton(),
        ),
      ],
    );
  }
}
