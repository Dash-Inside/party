import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:party/src/presentation/pages/etc_page.dart';
import 'package:party/src/presentation/pages/search_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      // home: ProfilePage(),
      home: EtcPage(
        userInformation: [
          'Алексей',
          'Алексей',
          'Дмитрий',
          'Алексей',
          'Алексей',
          'Дмитрий',
          'Алексей',
          'Алексей',
          'Дмитрий',
          'Алексей',
          'Алексей',
          'Дмитрий',
          'Алексей',
          'Алексей',
          'Дмитрий',
          'Алексей',
          'Алексей',
          'Дмитрий',
          'Алексей',
          'Алексей',
          'Дмитрий',
        ],
      ),
    );
  }
}
