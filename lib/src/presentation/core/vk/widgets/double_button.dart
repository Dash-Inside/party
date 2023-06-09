part of '../vk_app_bar.dart';

class DoubleButton extends StatelessWidget {
  final Function()? onMoreTap;
  final Function()? onCancelTap;

  const DoubleButton({
    this.onMoreTap,
    this.onCancelTap,
    super.key,
  });

  static const moreHorizontalIconAsset = 'assets/icons/more_horizontal.svg';
  static const cancelIconAsset = 'assets/icons/cancel.svg';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 6.0,
        horizontal: 4.0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          color: Theme.of(context).highlightColor,
          height: 32.0,
          width: 88.0,
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: onMoreTap,
                  child: SvgPicture.asset(
                    moreHorizontalIconAsset,
                    height: 28.0,
                    width: 28.0,
                  ),
                ),
              ),
              SizedBox(
                height: 24.0,
                width: 1.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.5),
                  child: ColoredBox(
                    color: Theme.of(context).colorScheme.background,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: onCancelTap,
                  child: SvgPicture.asset(
                    cancelIconAsset,
                    height: 28.0,
                    width: 28.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    // return SvgPicture.asset('assets/svg/vk_right_buttons.svg', semanticsLabel: 'Buttons');

    // return Card(
    //   borderOnForeground: false,
    //   color: const Color(0xFF282B2E).withOpacity(0.2),
    //   child: const Row(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       InkWell(
    //         child: Padding(
    //           padding: EdgeInsets.all(8.0),
    //           child: Icon(
    //             Icons.more_horiz_outlined,
    //             color: Colors.white,
    //             size: 24,
    //           ),
    //         ),
    //       ),
    //       SizedBox(
    //         height: 24,
    //         child: VerticalDivider(
    //           // color: Colors.white.withOpacity(0.12),
    //           width: 1,
    //         ),
    //       ),
    //       InkWell(
    //         child: Padding(
    //           padding: EdgeInsets.all(8.0),
    //           child: Icon(
    //             Icons.close,
    //             color: Colors.white,
    //             size: 24,
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
