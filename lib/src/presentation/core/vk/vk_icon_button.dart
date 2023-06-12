import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VkIconButton extends StatelessWidget {
  static const _height = 48.0;
  static const _horizontalPadding = EdgeInsets.symmetric(horizontal: 4.0);
  static const _layoutPadding = 16.0;

  static const _chevronIconAsset = 'assets/icons/chevron_right.svg';
  static const _chevronIconWidth = 16.0;
  static const _chevronIconHeight = 24.0;

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
    return Padding(
      padding: _horizontalPadding,
      child: SizedBox(
        height: _height,
        child: Row(
          children: [
            icon,
            SizedBox(
              width: _layoutPadding,
            ),
            Expanded(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            SizedBox(
              width: _layoutPadding,
            ),
            SvgPicture.asset(
              _chevronIconAsset,
              width: _chevronIconWidth,
              height: _chevronIconHeight,
            ),
          ],
        ),
      ),
    );
  }
}
