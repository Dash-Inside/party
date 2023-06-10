part of '../vk_app_bar.dart';

class DoubleButton extends StatelessWidget {
  static const _doubleButtonWidth = 88.0;
  static const _doubleButtonHeight = 32.0;

  static const _dividerWidth = 1.0;
  static const _dividerHeight = 24.0;

  static const _moreHorizontalIconAsset = 'assets/icons/more_horizontal.svg';
  static const _moreHorizontalIconWidth = 28.0;
  static const _moreHorizontalIconHeight = 28.0;

  static const _cancelIconAsset = 'assets/icons/cancel.svg';
  static const _cancelIconWidth = 28.0;
  static const _cancelIconHeight = 28.0;

  static final _buttonPadding = EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0);
  static final _buttonsBorderRadius = const BorderRadius.all(Radius.circular(10.0));
  static final _dividerBorderRadius = const BorderRadius.all(Radius.circular(0.5));

  final Function()? onMoreTap;
  final Function()? onCancelTap;

  const DoubleButton({
    this.onMoreTap,
    this.onCancelTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _buttonPadding,
      child: ClipRRect(
        borderRadius: _buttonsBorderRadius,
        child: Container(
          color: Theme.of(context).highlightColor,
          width: _doubleButtonWidth,
          height: _doubleButtonHeight,
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: onMoreTap,
                  child: SvgPicture.asset(
                    _moreHorizontalIconAsset,
                    width: _moreHorizontalIconWidth,
                    height: _moreHorizontalIconHeight,
                  ),
                ),
              ),
              SizedBox(
                width: _dividerWidth,
                height: _dividerHeight,
                child: ClipRRect(
                  borderRadius: _dividerBorderRadius,
                  child: ColoredBox(
                    color: Theme.of(context).colorScheme.background,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: onCancelTap,
                  child: SvgPicture.asset(
                    _cancelIconAsset,
                    width: _cancelIconWidth,
                    height: _cancelIconHeight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
