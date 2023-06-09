import 'package:flutter/material.dart';
import 'package:party/src/presentation/pages/app/components/etc_tab.dart';
import 'package:party/src/presentation/pages/forbidden/forbidden_page.dart';
import 'package:party/src/presentation/pages/app/components/search_tab.dart';
import 'package:party/src/presentation/pages/app/components/teammates_tab.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
          colorScheme: ColorScheme.light(
        primary: Colors.blue,
      )),
      initialRoute: SearchTab.route,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) {
            switch (settings.name) {
              case SearchTab.route:
                return SearchTab();

              case TeammatesTab.route:
                return TeammatesTab();

              case EtcTab.route:
                return EtcTab();

              case ForbiddenPage.route:
                return ForbiddenPage();
            }

            return ForbiddenPage();
          },
        );
      },
    );
  }
}
