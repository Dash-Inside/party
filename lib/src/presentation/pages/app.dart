import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:party/src/presentation/pages/app/app_page.dart';
import 'package:party/src/presentation/pages/forbidden/forbidden_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find Party',
      theme: ThemeData.from(
        textTheme: TextTheme(
          titleMedium: GoogleFonts.roboto(
            textStyle: TextStyle(
              letterSpacing: 0.05,
              fontWeight: FontWeight.w600,
              fontSize: 17.0,
              height: 22.0,
            ),
          ),
          bodyMedium: GoogleFonts.roboto(
            textStyle: TextStyle(
              letterSpacing: 0.05,
              fontWeight: FontWeight.w500,
              fontSize: 15.0,
              height: 20.0,
            ),
          ),
          labelMedium: GoogleFonts.roboto(
            textStyle: TextStyle(
              letterSpacing: 0.05,
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
              height: 16.0,
            ),
          ),
        ),
        colorScheme: ColorScheme.light(
          primary: Colors.blue,
        ),
      ),
      initialRoute: AppPage.route,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) {
            switch (settings.name) {
              case AppPage.route:
                return AppPage();

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
