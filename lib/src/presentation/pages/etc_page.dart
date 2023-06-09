import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:party/src/presentation/widgets/bottom_nav_bar.dart';
import 'package:party/src/presentation/widgets/custom_button.dart';
import 'package:party/src/presentation/widgets/panel_header.dart';
import 'package:party/src/presentation/widgets/profile.dart';
import 'package:party/src/presentation/widgets/vk_divider.dart';

class EtcPage extends StatelessWidget {
  final List<String> userInformation;
  const EtcPage({
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
          VkDivider(),
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
      child: GridView.custom(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) => TeammateListElement(
            nickname: userInformation[index],
            info: userInformation[index],
          ),
        ),
      ),
    );
  }
}

class TeammateListElement extends StatelessWidget {
  final String nickname;
  final String info;
  const TeammateListElement({
    super.key,
    required this.nickname,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        child: Column(
          children: [
            _elementHeader(),
            SizedBox(
              width: 12,
            ),
            Text(
              nickname,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                letterSpacing: 0.1,
              ),
            ),
            Text(
              info,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                letterSpacing: 0.1,
              ),
            ),
            Spacer(),
            CustomButton(
              title: 'Написать',
            ),
          ],
        ),
      ),
    );
  }
}

class _elementHeader extends StatelessWidget {
  final bool star;

  const _elementHeader({
    super.key,
    this.star = true,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (star)
        return Row(
          children: [
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.star),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 36,
                  backgroundColor: Colors.amber,
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
              ),
            ),
          ],
        );
      else
        return Row(
          children: [
            Spacer(),
            Expanded(
              child: CircleAvatar(
                radius: 36,
                backgroundColor: Colors.amber,
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
              ),
            ),
          ],
        );
    });
  }
}
