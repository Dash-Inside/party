import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party/src/presentation/pages/app/app_page.dart';
import 'package:party/src/presentation/pages/app/bloc/app_bloc.dart';
import 'package:party/src/presentation/pages/forbidden/forbidden_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  static const Color primaryColor = Color(0xFF2688EB);
  static const boldTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: 'Roboto',
  );
  static const regularTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
  );
  static const lightTextStyle = TextStyle(
    fontWeight: FontWeight.w300,
    fontFamily: 'Roboto',
  );
  static const thinTextStyle = TextStyle(
    fontWeight: FontWeight.w100,
    fontFamily: 'Roboto',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppPage.route,
      onGenerateRoute: onGenerateRoute,
      title: 'Find Party',
      theme: ThemeData.from(
        colorScheme: ColorScheme.light(
          primary: primaryColor,
        ),
        textTheme: TextTheme(
          headlineLarge: boldTextStyle,
          titleLarge: regularTextStyle,
          bodyLarge: lightTextStyle,
          labelLarge: thinTextStyle,
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
