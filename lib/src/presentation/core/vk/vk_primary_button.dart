import 'package:flutter/material.dart';

class VkPrimaryButton extends StatelessWidget {
  static const _borderRadius = const BorderRadius.all(Radius.circular(10.0));

  final String data;
  final Function()? onTap;

  const VkPrimaryButton({
    required this.data,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onTap,
      style: FilledButton.styleFrom(
        textStyle: Theme.of(context).textTheme.bodyLarge,
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
