import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:party/src/presentation/widgets/bottom_nav_bar.dart';
import 'package:party/src/presentation/widgets/panel_header.dart';
import 'package:party/src/presentation/widgets/profile.dart';
import 'package:party/src/presentation/widgets/vk_divider.dart';

class EtcPage extends StatelessWidget {
  const EtcPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Column(
        children: [
          PanelHeader(
            title: 'Ещё',
          ),
          VkDivider(
            padding: EdgeInsets.all(8),
          ),
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
        Profile(
          padding: EdgeInsets.all(16),
          nickname: 'Алексей',
          stuf: 'Питер',
        ),
        VkDivider(
          padding: EdgeInsets.all(16),
        ),
        Settings(),
        VkDivider(
          padding: EdgeInsets.all(16),
        ),
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
