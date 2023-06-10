part of '../vk_app_bar.dart';

class SearchOption extends StatelessWidget {
  static const _slidersOutlineIconAsset = 'assets/icons/sliders_outline.svg';
  static const _slidersOutlineIconWidth = 28.0;
  static const _slidersOutlineIconHeight = 28.0;

  static final _buttonPadding = EdgeInsets.all(4.0);

  final Function()? onTap;

  const SearchOption({
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _buttonPadding,
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: SvgPicture.asset(
            _slidersOutlineIconAsset,
            width: _slidersOutlineIconWidth,
            height: _slidersOutlineIconHeight,
          ),
        ),
      ),
    );
  }
}
