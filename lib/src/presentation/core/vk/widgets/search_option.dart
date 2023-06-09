part of '../vk_app_bar.dart';

class SearchOprion extends StatelessWidget {
  const SearchOprion({super.key});

  static const slidersOutlineIconAsset = 'assets/icons/sliders_outline.svg';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: InkWell(
        child: Center(
          child: SvgPicture.asset(
            slidersOutlineIconAsset,
            width: 28.0,
            height: 28.0,
          ),
        ),
      ),
    );
  }
}
