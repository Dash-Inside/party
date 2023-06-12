import 'package:flutter/material.dart';
import 'package:party/src/presentation/core/l10n/app_l10n.dart';

part 'widgets/vk_switch.dart';

class VkSwitchCard extends StatefulWidget {
  static const _descriptionMaxLines = 2;

  VkSwitchCard({super.key});

  @override
  State<VkSwitchCard> createState() => _VkSwitchCardState();
}

class _VkSwitchCardState extends State<VkSwitchCard> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                AppL10n.searchButton.$,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodyLarge,
              ),
            ),
            VkSwitch(
              state: true,
            ),
          ],
        ),
        Text(
          AppL10n.searchButtonDescription.$,
          maxLines: VkSwitchCard._descriptionMaxLines,
          overflow: TextOverflow.ellipsis,
          style: textTheme.labelLarge,
        ),
      ],
    );
  }
}
