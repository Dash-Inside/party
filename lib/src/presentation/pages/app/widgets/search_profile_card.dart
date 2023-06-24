part of '../app_page.dart';

class SearchProfileCard extends StatelessWidget {
  static const profileCardPadding = const EdgeInsets.all(16.0);
  static const customButtonPadding = const EdgeInsets.all(8.0);

  const SearchProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: Padding(
          //     padding: profileCardPadding,
          //     child: const ProfileCard(),
          //   ),
          // ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'userInformation',
                style: textTheme.labelLarge,
              ),
            ),
          ),
          // Padding(
          //   padding: customButtonPadding,
          //   child: const CustomButton(
          //     title: 'Text special message',
          //   ),
          // ),
        ],
      ),
    );
  }
}
