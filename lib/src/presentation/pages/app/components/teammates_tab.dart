import 'package:flutter/material.dart';
import 'package:party/src/presentation/widgets/bottom_nav_bar.dart';
import 'package:party/src/presentation/widgets/panel_header.dart';
import 'package:party/src/presentation/widgets/custom_divider.dart';

class TeammatesTab extends StatelessWidget {
  TeammatesTab({
    super.key,
  });

  static const route = '/teammates';

  final List<String> userInformation = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PanelHeader(
            title: 'Тиммейты',
          ),
          CustomDivider(
            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
          ),
          _Content(
            userInformation: userInformation,
          ),
        ],
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final List<String> userInformation;
  const _Content({
    required this.userInformation,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
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
            padding: EdgeInsets.all(8),
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
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
                      Text('Дота валорант пубг еда \nменя зовут иван хочу играть в кс'),
                      Padding(
                        padding: const EdgeInsets.symmetric(
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
            padding: EdgeInsets.all(8),
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircleAvatar(
                      radius: 36,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(nickname),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
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
      child: Text(
        title,
        style: TextStyle(
          color: textColor,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: backColor,
      ),
    );
  }
}
