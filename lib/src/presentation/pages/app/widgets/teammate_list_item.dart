part of '../app_page.dart';

class TeammateListItem extends StatelessWidget {
  static const _padding = const EdgeInsets.symmetric(
    horizontal: 12.0,
    vertical: 6.0,
  );
  static const _wrapSpacing = 12.0;
  static const _buttonsSpacing = 8.0;
  static const _avatarRadius = 36.0;
  static const _nicknameMaxLines = 1;
  static const _descriptionMaxLinex = 2;

  final String nickname;
  final String description;
  final Function()? onMessageTap;
  final Function()? onHideTap;

  const TeammateListItem({
    required this.nickname,
    required this.description,
    this.onMessageTap,
    this.onHideTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: _padding,
      child: Wrap(
        spacing: _wrapSpacing,
        children: [
          CircleAvatar(
            radius: _avatarRadius,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nickname,
                maxLines: _nicknameMaxLines,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodyLarge,
              ),
              Text(
                description,
                maxLines: _descriptionMaxLinex,
                overflow: TextOverflow.ellipsis,
                style: textTheme.labelLarge,
              ),
              Wrap(
                spacing: _buttonsSpacing,
                children: [
                  VkPrimaryButton(
                    data: 'Message',
                    onTap: onMessageTap,
                  ),
                  VkSecondaryButton(
                    data: 'Hide',
                    onTap: onHideTap,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
