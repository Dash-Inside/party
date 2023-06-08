import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:party/src/presentation/widgets/bottom_nav_bar.dart';
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
      child: ListView.builder(
        itemCount: userInformation.length,
        itemBuilder: (context, index) {
          return TeammateCard(userInformation: userInformation[index]);
          // return TeammateListElement(
          //   nickname: userInformation[index],
          //   info: userInformation[index],
          // );
        },
      ),
    );
  }
}

class TeammateCard extends StatelessWidget {
  const TeammateCard({
    super.key,
    required this.userInformation,
  });

  final String userInformation;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Profile(
              nickname: userInformation,
              padding: EdgeInsets.all(16),
              stuf: userInformation,
            ),
            SizedBox(
              child: Text(userInformation),
            ),
            Spacer(),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 270),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xFF2D81E0),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
            ),
            child: Center(
              child: Text('Написать специальное сообщение'),
            ),
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
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 36,
            backgroundColor: Colors.amber,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  letterSpacing: 0.2,
                  color: Color(0xFF818C99),
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(Icons.message),
        ],
      ),
    );
  }
}
