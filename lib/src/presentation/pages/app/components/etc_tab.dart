part of '../app_page.dart';

class EtcTab extends StatelessWidget {
  static const settingButtonHelpIcon = Icons.help_outline_outlined;
  static const settingButtonInfoIcon = Icons.info_outline;

  const EtcTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        VkCardSection(
          child: ProfileCard(
            nickname: 'John Doe',
            info: 'Pro CS:GO',
          ),
        ),
        VkCardSection(
          child: VkSwitchCard(),
        ),
      ],
    );

    /* DEPRECATED.

    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              ProfileCard(
                padding: profileCardPadding,
                nickname: 'Алексей',
                stuf: 'Питер',
              ),
              Settings(),
              _SettingsButton(
                icon: settingButtonHelpIcon,
                text: settingButtonHelpText,
              ),
              _SettingsButton(
                icon: Icons.info_outline,
                text: settingButtonInfoText,
              ),
            ],
          ),
        ),
      ],
    );

    */
  }
}

/* DEPRECATED.

class _SettingsButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const _SettingsButton({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          Icon(
            icon,
            color: EtcTab.settingButtonIconColor,
            size: EtcTab.settingButtonIconSize,
          ),
          SizedBox(
            width: EtcTab.settingButtonIconSeparatorWidth,
          ),
          Expanded(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodyLarge,
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
    final textTheme = Theme.of(context).textTheme;

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
                  style: textTheme.bodyLarge,
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
            maxLines: EtcTab.settingsMaxLines,
            overflow: TextOverflow.ellipsis,
            style: textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}

*/