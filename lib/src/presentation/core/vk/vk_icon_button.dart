import 'package:flutter/material.dart';

class VkIconButton extends StatelessWidget {
  static const _horizontalPadding = EdgeInsets.symmetric(horizontal: 16.0);

  final Widget icon;
  final String title;
  final Function()? onTap;

  const VkIconButton({
    required this.icon,
    required this.title,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: _horizontalPadding,
          child: icon,
        ),
        Expanded(
          child: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
