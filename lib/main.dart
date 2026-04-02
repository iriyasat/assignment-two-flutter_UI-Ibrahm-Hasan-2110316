import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_screen.dart';

void main() {
  runApp(const AssignmentTwoApp());
}

class AssignmentTwoApp extends StatelessWidget {
  const AssignmentTwoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF5B4FCF),
        fontFamily: GoogleFonts.inter().fontFamily,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF5B4FCF),
        ),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
