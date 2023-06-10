part of '../app_page.dart';

class EtcTab extends StatelessWidget {
  const EtcTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ! DEPRECATED.

    return Scaffold(
      body: Column(
        children: [
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
        ProfileCard(
          padding: EdgeInsets.all(16),
          nickname: 'Алексей',
          stuf: 'Питер',
        ),
        Settings(),
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
              style: TextStyle(
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
                  style: TextStyle(
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
            style: TextStyle(
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
