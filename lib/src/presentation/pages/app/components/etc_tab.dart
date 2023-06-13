part of '../app_page.dart';

class EtcTab extends StatelessWidget {
  static const helpIconData = Icons.help_outline_outlined;
  static const infoIconData = Icons.info_outline;

  const EtcTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).colorScheme.primary;

    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        VkCardSection(
          child: ProfileCard(
            nickname: '<Nickname>',
            description: '<Description>',
          ),
        ),
        VkCardSection(
          child: VkSwitchCard(),
        ),
        VkCardSection(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              VkIconButton(
                icon: Icon(
                  helpIconData,
                  color: iconColor,
                ),
                title: AppL10n.helpButton.$,
              ),
              VkIconButton(
                icon: Icon(
                  helpIconData,
                  color: iconColor,
                ),
                title: AppL10n.aboutUsButton.$,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
