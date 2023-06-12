import 'package:flutter/material.dart';
import 'package:party/src/presentation/pages/app/widgets/second_custom_button.dart';

class TeammateListElement extends StatelessWidget {
  static const padding = const EdgeInsets.all(8);

  static const widthSeparator = 16.0;
  static const heightSeparator = 4.0;
  static const circleAvatarRadius = 36.0;

  static const specialButtonBackColor = Color(0xfff5f5f5);
  static const specialButtonTextColor = Color(0xdd2D81E0);

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
    return Padding(
      padding: padding,
      child: Card(
        child: Padding(
          padding: padding,
          child: Row(
            children: [
              CircleAvatar(radius: circleAvatarRadius),
              SizedBox(
                width: widthSeparator,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nickname,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'Dota valorant pubg food \nMy name is Ivan I want to play cs',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Colors.black),
                  ),
                  SizedBox(
                    height: heightSeparator,
                  ),
                  Row(
                    children: [
                      SecondCustomButton(
                        title: 'See special msg',
                      ),
                      SizedBox(
                        width: widthSeparator,
                      ),
                      SecondCustomButton(
                        title: 'Hide',
                        backColor: specialButtonBackColor,
                        textColor: specialButtonTextColor,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
