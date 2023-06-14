part of '../app_page.dart';

class SearchProfileCard extends StatelessWidget {
  static const _cardBorderRadius = const BorderRadius.all(Radius.circular(20));
  static const _cardContentPadding = EdgeInsets.all(8);
  static const _wrapHorizontalSpacing = 8.0;

  const SearchProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ClipRRect(
      borderRadius: _cardBorderRadius,
      child: Card(
        child: Stack(
          children: [
            //ToDo real avatar
            Container(
              color: Theme.of(context).colorScheme.primary,
            ),
            Container(
              padding: _cardContentPadding,
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        'Name, 18 Moscow',
                        style: textTheme.bodyLarge,
                      ),
                      Icon(Icons.male),
                    ],
                  ),
                  Text(
                    'Hi everyone Im prof cs:go player, I have 3200 elo on faceit, and now Im looking for a team, though we wiil play minecraft',
                    textAlign: TextAlign.justify,
                    style: textTheme.bodyMedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.check),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.send),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.cancel),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.report),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
