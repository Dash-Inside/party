part of '../app_page.dart';

class EtcEditTab extends StatelessWidget {
  static const helpIconData = Icons.help_outline_outlined;
  static const infoIconData = Icons.info_outline;

  const EtcEditTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).colorScheme.primary;

    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        VkCardSection(
          child: ProfileEditCard(),
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
