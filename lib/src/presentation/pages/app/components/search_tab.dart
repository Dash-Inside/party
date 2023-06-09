part of '../app_page.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({
    super.key,
  });

  final String userInformation = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(child: Placeholder()),
    );

    // return Scaffold(
    //   bottomNavigationBar: BottomNavBar(),
    //   body: Column(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       PanelHeader(
    //         title: 'Поиск',
    //         icon: Icons.flag_outlined,
    //       ),
    //       CustomDivider(
    //         padding: EdgeInsets.all(8),
    //       ),
    //       Spacer(),
    //       _Content1(
    //         userInformation: 'Информация о пользователе',
    //       ),
    //       Spacer(),
    //     ],
    //   ),
    // );
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
            Profile(
              padding: EdgeInsets.all(16),
              stuf: 'Москва',
              nickname: 'Алексей',
            ),
            SizedBox(
              child: Text(userInformation),
            ),
            Spacer(),
            CustomButton(
              title: 'Написать специальное сообщение',
            ),
          ],
        ),
      ),
    );
  }
}
