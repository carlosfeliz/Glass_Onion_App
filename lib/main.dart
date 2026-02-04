import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:glass_onion_kanives_out/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Glass Onion: Knives Out',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFD4AF37), // Metallic Gold
        scaffoldBackgroundColor: const Color(0xFF0F171E), // Deep Dark Blue/Black
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ).apply(
          bodyColor: const Color(0xFFEEEEEE),
          displayColor: const Color(0xFFD4AF37),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: GoogleFonts.playfairDisplay(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: const Color(0xFFD4AF37),
            letterSpacing: 1.2,
          ),
          iconTheme: const IconThemeData(color: Color(0xFFD4AF37)),
        ),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFD4AF37),
          secondary: Color(0xFFC0C0C0), // Silver
          surface: Color(0xFF1C2526),
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
