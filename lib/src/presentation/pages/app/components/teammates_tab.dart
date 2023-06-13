part of '../app_page.dart';

class TeammatesTab extends StatelessWidget {
  TeammatesTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, i) {
        return TeammateListElement(
          nickname: '<Ninkname{$i}>',
          description: '<Descripion{$i}>',
        );
      },
    );
  }
}
