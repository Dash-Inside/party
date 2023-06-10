part of '../app_page.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({
    super.key,
  });

  final String userInformation = "";

  @override
  Widget build(BuildContext context) {
    // ! DEPRECATED.

    return Container(
      padding: EdgeInsets.all(12.0),
      constraints: BoxConstraints(),
      child: Text(
        'test',
      ),
    );
  }
}

class _Content1 extends StatelessWidget {
  final String userInformation;
  const _Content1({
    required this.userInformation,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ProfileCard(
              padding: EdgeInsets.all(16),
              stuf: 'Москва',
              nickname: 'Алексей',
            ),
            Text(userInformation),
            const CustomButton(
              title: 'Написать специальное сообщение',
            ),
          ],
        ),
      ),
    );
  }
}
