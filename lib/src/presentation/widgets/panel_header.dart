import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:party/src/presentation/widgets/double_button.dart';

class PanelHeader extends StatelessWidget {
  const PanelHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Ещё',
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
