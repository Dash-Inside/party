part of '../app_page.dart';

class ProfileCard extends StatelessWidget {
  static const avatarRadius = 36.0;
  static const avatarPadding = EdgeInsets.symmetric(vertical: 6.0);

  static const spacerWidth = 12.0;

  final String nickname;
  final String description;

  final bool editFunc;

  const ProfileCard({
    super.key,
    required this.nickname,
    required this.description,
    this.editFunc = false,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Builder(builder: (context) {
      if (editFunc)
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: avatarPadding,
              child: CircleAvatar(radius: avatarRadius),
            ),
            SizedBox(width: spacerWidth),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nickname,
                  style: textTheme.bodyLarge,
                ),
                Text(
                  description,
                  style: textTheme.bodyMedium,
                ),
              ],
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {},
              color: Theme.of(context).colorScheme.primary,
            ),
          ],
        );
      else
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: avatarPadding,
              child: CircleAvatar(radius: avatarRadius),
            ),
            SizedBox(width: spacerWidth),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nickname,
                  style: textTheme.bodyLarge,
                ),
                Text(
                  description,
                  style: textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        );
    });
  }
}
