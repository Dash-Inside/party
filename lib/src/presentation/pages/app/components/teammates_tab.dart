part of '../app_page.dart';

class TeammatesTab extends StatelessWidget {
  TeammatesTab({
    super.key,
  });

  final List<String> userInformation = List.generate(50, (index) => index.toString());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userInformation.length,
      itemBuilder: (_, i) {
        return TeammateListElement(
          nickname: userInformation[i],
          info: userInformation[i],
        );
      },
    );
  }
}
