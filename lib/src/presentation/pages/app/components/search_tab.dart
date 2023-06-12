part of '../app_page.dart';

class SearchTab extends StatelessWidget {
  static const constrainedBoxMinWidth = 135.0;
  static const constrainedBoxMinHeight = 100.0;
  static const constrainedBoxMaxWidth = 270.0;
  static const constrainedBoxMaxHeight = 330.0;

  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: constrainedBoxMinWidth,
          minHeight: constrainedBoxMinHeight,
          maxWidth: constrainedBoxMaxWidth,
          maxHeight: constrainedBoxMaxHeight,
        ),
        child: SearchProfileCard(),
      ),
    );
  }
}
