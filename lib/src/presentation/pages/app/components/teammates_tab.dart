part of '../app_page.dart';

class TeammatesTab extends StatelessWidget {
  TeammatesTab({
    super.key,
  });

  final List<String> userInformation = ['1', '2', '3'];

  @override
  Widget build(BuildContext context) {
    // ! DEPRECATED.

    return Container(
      padding: EdgeInsets.all(12.0),
      constraints: BoxConstraints(),
      child: Text(
        'test2',
      ),
    );

    // return Scaffold(
    //   bottomNavigationBar: const BottomNavBar(),
    //   body: Column(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       const PanelHeader(
    //         title: 'Тиммейты',
    //       ),
    //       const CustomDivider(
    //         padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
    //       ),
    //       _Content2(
    //         userInformation: userInformation,
    //       ),
    //     ],
    //   ),
    // );
  }
}

class _Content2 extends StatelessWidget {
  final List<String> userInformation;
  const _Content2({
    required this.userInformation,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: userInformation.length,
        itemBuilder: (_, i) => TeammateListElement(
          nickname: userInformation[i],
          info: userInformation[i],
        ),
      ),
    );
  }
}

class TeammateListElement extends StatelessWidget {
  final String nickname;
  final String info;
  final bool special;
  const TeammateListElement({
    super.key,
    required this.nickname,
    required this.info,
    this.special = true,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (special)
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Card(
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: CircleAvatar(
                      radius: 36,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(nickname),
                      ),
                      const Text(
                          'Дота валорант пубг еда \nменя зовут иван хочу играть в кс'),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        child: Row(
                          children: [
                            _CustomButton(
                              title: 'Посмотреть',
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            _CustomButton(
                              title: 'Скрыть',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        else
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Card(
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: CircleAvatar(
                      radius: 36,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(nickname),
                      const SizedBox(
                        height: 18,
                      ),
                      const Row(
                        children: [
                          _CustomButton(
                            title: 'Написать',
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          _CustomButton(
                            title: 'Скрыть',
                            backColor: Color(0xfff5f5f5),
                            textColor: Color(0xdd2D81E0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
      },
    );
  }
}

class _CustomButton extends StatelessWidget {
  final String title;
  final Color backColor;
  final Color textColor;
  const _CustomButton({
    required this.title,
    this.backColor = const Color(0xFF2D81E0),
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: backColor,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}
