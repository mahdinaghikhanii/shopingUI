import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
            bodyMedium: GoogleFonts.poppins(
                fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w300),
            titleLarge: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.black,
                height: 1.1,
                fontWeight: FontWeight.w700),
            titleMedium: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.black,
                height: 1.1,
                fontWeight: FontWeight.w700),
          ),
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              onPrimary: const Color(0xFF638286),
              primary: const Color(0xFFF6F8F8)),
          useMaterial3: true,
        ),
        home: const OnBoardingPage());
  }
}
