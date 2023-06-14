import 'package:flutter/material.dart';
import 'package:party/src/presentation/core/l10n/app_l10n.dart';
import 'package:party/src/presentation/pages/app/widgets/custom_text_field.dart';

class ProfileEditCard extends StatelessWidget {
  static const _avatarRadius = 36.0;
  static const _avatarPadding = EdgeInsets.symmetric(vertical: 6.0);

  static const _spacerWidth = 12.0;

  static const _textFieldMaxLines = 2;

  const ProfileEditCard({super.key});

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        Padding(
          padding: _avatarPadding,
          child: CircleAvatar(radius: _avatarRadius),
        ),
        SizedBox(width: _spacerWidth),
        Flexible(
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: CustomTextField(
                    textTheme: _textTheme,
                    textFieldMaxLines: 1,
                    data: AppL10n.usernameTextFieldHint.$,
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: CustomTextField(
                    textTheme: _textTheme,
                    textFieldMaxLines: _textFieldMaxLines,
                    data: AppL10n.descriptionTextFieldHint.$,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
