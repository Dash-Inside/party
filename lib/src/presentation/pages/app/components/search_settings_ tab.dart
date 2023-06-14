import 'package:flutter/material.dart';
import 'package:l10n_flutter/examples/models/demo3.dart';
import 'package:party/src/presentation/core/l10n/app_l10n.dart';
import 'package:party/src/presentation/pages/app/widgets/custom_text_field.dart';

class SearchSettingsTab extends StatelessWidget {
  static const _cardBorderRadius = const BorderRadius.all(Radius.circular(20));
  static const _cardContentPadding = EdgeInsets.all(8);
  static const _textGamePadding = EdgeInsets.symmetric(horizontal: 12.0);

  const SearchSettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return Container(
      padding: _cardContentPadding,
      alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomTextField(
                    textTheme: _textTheme,
                    textFieldMaxLines: 1,
                    data: AppL10n.searchTextFieldHint.$,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20.0,
                      ),
                      Padding(
                        padding: _textGamePadding,
                        child: Text(
                          'Defence of the ancients 2',
                          style: _textTheme.bodyMedium,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.check_circle,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
