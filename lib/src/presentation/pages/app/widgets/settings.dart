import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static const settingsPadding = const EdgeInsets.all(16);

  static const settingsMaxLines = 2;

  const Settings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: settingsPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Participate in selection',
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.bodyLarge,
                ),
              ),
              Switch(
                value: false,
                onChanged: (_) => !_,
              ),
            ],
          ),
          Text(
            'Your account will be displayed in the matchmaking system',
            maxLines: settingsMaxLines,
            overflow: TextOverflow.ellipsis,
            style: textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
