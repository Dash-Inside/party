import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:party/src/presentation/widgets/bottom_nav_bar.dart';
import 'package:party/src/presentation/widgets/custom_button.dart';
import 'package:party/src/presentation/widgets/panel_header.dart';
import 'package:party/src/presentation/widgets/profile.dart';
import 'package:party/src/presentation/widgets/vk_divider.dart';

class TeammatePage extends StatelessWidget {
  final List<String> userInformation;
  const TeammatePage({
    super.key,
    required this.userInformation,
  });

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
          VkDivider(
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
    this.special = false,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (special)
          return Padding(
            padding: EdgeInsets.fromLTRB(
              8,
              8,
              8,
              0,
            ),
            child: Card(
              child: Row(
                children: [
                  CircleAvatar(),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(nickname),
                      Text(info),
                      Row(
                        children: [
                          _CustomButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            title: 'Посмотреть',
                            color: Color(0xFF2D81E0),
                          ),
                          _CustomButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            title: 'Скрыть',
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        else
          return Padding(
            padding: EdgeInsets.fromLTRB(
              8,
              8,
              8,
              0,
            ),
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
                      Row(
                        children: [
                          Text(nickname),
                          Chip(
                            label: Text('Special message'),
                          ),
                        ],
                      ),
                      Text(info),
                      Row(
                        children: [
                          _CustomButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            title: 'Добавить',
                            color: Color(0xFF2D81E0),
                          ),
                          _CustomButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            title: 'Скрыть',
                            color: Colors.grey,
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
  final Color color;
  final EdgeInsets padding;
  const _CustomButton({
    required this.title,
    required this.color,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: padding,
          child: Text(title),
        ),
      ),
    );
  }
}
