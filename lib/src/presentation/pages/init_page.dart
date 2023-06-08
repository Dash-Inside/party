import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:party/src/presentation/widgets/bottom_nav_bar.dart';
import 'package:party/src/presentation/widgets/double_button.dart';
import 'package:party/src/presentation/widgets/panel_header.dart';
import 'package:party/src/presentation/widgets/vk_divider.dart';

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Column(
        children: [
          InitPanelHeader(),
          VkDivider(),
          _Content(),
        ],
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(children: [
        Profile(),
        VkDivider(),
        Settings(),
        VkDivider(),
        _SettingsButton(
          icon: Icons.help_outline_outlined,
          text: 'Помощь',
        ),
        _SettingsButton(
          icon: Icons.info_outline,
          text: 'О приложении',
        ),
      ]),
    );
  }
}

class _SettingsButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const _SettingsButton({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xFF2688EB),
            size: 24,
          ),
          SizedBox(
            width: 18,
          ),
          Expanded(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                letterSpacing: 0.1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Учавствовать в подборе',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    letterSpacing: 0.1,
                  ),
                ),
              ),
              Switch(
                value: false,
                onChanged: (_) => !_,
              ),
            ],
          ),
          Text(
            'Ваш аккаунт будет отображаться в системе подбора игроков',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              letterSpacing: 0.2,
              color: Color(0xFF818C99),
            ),
          ),
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      child: Row(
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
                'Алексей Мазелюк',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  letterSpacing: 0.1,
                ),
              ),
              Text(
                'Санкт-Петербург',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  letterSpacing: 0.2,
                  color: Color(0xFF818C99),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class InitPanelHeader extends StatelessWidget {
  const InitPanelHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Icon(Icons.outlined_flag),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Поиск',
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w300,
                  fontSize: 23,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(12),
          child: DoubleButton(),
        ),
      ],
    );
  }
}
