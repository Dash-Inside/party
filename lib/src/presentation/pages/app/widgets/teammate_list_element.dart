import 'package:flutter/material.dart';
import 'package:party/src/presentation/core/vk/vk_primary_button.dart';
import 'package:party/src/presentation/core/vk/vk_secondary_button.dart';
import 'package:party/src/presentation/pages/app/widgets/second_custom_button.dart';

class TeammateListElement extends StatelessWidget {
  static const _padding = const EdgeInsets.symmetric(
    horizontal: 12.0,
    vertical: 6.0,
  );
  static const _wrapSpacing = 12.0;
  static const _avatarRadius = 36.0;

  final String nickname;
  final String description;

  const TeammateListElement({
    super.key,
    required this.nickname,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: _padding,
      child: Wrap(
        spacing: _wrapSpacing,
        children: [
          CircleAvatar(
            radius: _avatarRadius,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nickname,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodyLarge,
              ),
              Text(
                description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: textTheme.labelLarge,
              ),
              Wrap(
                spacing: 8.0,
                children: [
                  VkPrimaryButton(
                    data: 'data 1',
                    onTap: () => null,
                  ),
                  VkSecondaryButton(
                    data: 'data 2',
                    onTap: () => null,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
