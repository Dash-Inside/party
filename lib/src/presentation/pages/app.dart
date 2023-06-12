import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:l10n_flutter/l10n_material_app.dart';
import 'package:party/src/presentation/core/l10n/app_l10n.dart';
import 'package:party/src/presentation/pages/app/app_page.dart';
import 'package:party/src/presentation/pages/app/bloc/app_bloc.dart';
import 'package:party/src/presentation/pages/forbidden/forbidden_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  static const Color primaryColor = Color(0xFF2688EB);
  static const boldTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'SF-Pro',
    fontSize: 20.0,
  );
  static const regularTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: 'SF-Pro',
    fontSize: 16.0,
  );
  static const lightTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: 'SF-Pro',
    fontSize: 13.0,
  );
  static const thinTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: 'SF-Pro',
    fontSize: 10.0,
  );

  @override
  Widget build(BuildContext context) {
    return L10nMaterialApp(
      locale: const Locale('ru', 'RU'),
      supportedLocales: AppL10nSettings.supportedLocales,
      initialRoute: AppPage.route,
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData.from(
        colorScheme: ColorScheme.light(
          primary: primaryColor,
        ),
        textTheme: TextTheme(
          titleLarge: boldTextStyle,
          bodyLarge: regularTextStyle,
          bodyMedium: lightTextStyle,
          bodySmall: thinTextStyle,
        ),
        useMaterial3: true,
      ),
    );
  }

  Route<void>? onGenerateRoute(settings) {
    return MaterialPageRoute(builder: (_) {
      switch (settings.name) {
        case AppPage.route:
          return BlocProvider<AppBloc>(
            create: (context) => AppBloc(),
            child: AppPage(),
          );
        case ForbiddenPage.route:
          return ForbiddenPage();
      }

      return ForbiddenPage();
    });
  }
}
