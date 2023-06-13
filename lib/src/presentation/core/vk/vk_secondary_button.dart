import 'package:flutter/material.dart';

class VkSecondaryButton extends StatelessWidget {
  static const _borderRadius = const BorderRadius.all(Radius.circular(10.0));

  final String data;
  final Function()? onTap;

  const VkSecondaryButton({
    required this.data,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FilledButton(
      onPressed: onTap,
      style: FilledButton.styleFrom(
        backgroundColor: theme.highlightColor,
        textStyle: theme.textTheme.bodyLarge,
        foregroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: _borderRadius,
        ),
      ),
      child: Text(
        data,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
