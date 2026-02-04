import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:glass_onion_kanives_out/screens/MomentDetailsScreen.dart';
import 'package:glass_onion_kanives_out/screens/about_screen.dart';
import 'package:glass_onion_kanives_out/screens/characters_screen.dart';
import 'package:glass_onion_kanives_out/screens/contact_screen.dart';
import 'package:glass_onion_kanives_out/widgets/glass_card.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late AudioPlayer _audioPlayer;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _audioPlayer = AudioPlayer();
    _playIntroSound();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    _animationController.forward();

    // Restore original logic: Stop audio after 5 seconds
    Timer(const Duration(seconds: 5), () {
      if (mounted) {
        _audioPlayer.stop();
      }
    });
  }

  void _playIntroSound() async {
    await _audioPlayer.play(AssetSource('audio/intro.mp3'));
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Glass Onion'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/portada.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Dark Overlay for readability
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          // Content
          FadeTransition(
            opacity: _fadeAnimation,
            child: Center(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100.0),
                children: <Widget>[
                  _buildGlassMenuItem(
                    context,
                    title: 'Personajes',
                    subtitle: 'Conoce a los sospechosos',
                    icon: Icons.people_outline,
                    screen: const CharactersScreen(),
                  ),
                  const SizedBox(height: 20),
                  _buildGlassMenuItem(
                    context,
                    title: 'Momentos',
                    subtitle: 'Escenas inolvidables',
                    icon: Icons.movie_filter_outlined,
                    screen: const MomentsScreen(),
                  ),
                  const SizedBox(height: 20),
                  _buildGlassMenuItem(
                    context,
                    title: 'La Película',
                    subtitle: 'Trama y Detalles',
                    icon: Icons.info_outline,
                    screen: const AboutScreen(),
                  ),
                  const SizedBox(height: 20),
                  _buildGlassMenuItem(
                    context,
                    title: 'Contacto',
                    subtitle: 'Hablemos de código',
                    icon: Icons.contact_mail_outlined,
                    screen: const ContactScreen(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGlassMenuItem(BuildContext context,
      {required String title,
      required String subtitle,
      required IconData icon,
      required Widget screen}) {
    return GlassCard(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      opacity: 0.15,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Theme.of(context).primaryColor, size: 30),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, color: Colors.white54, size: 16),
        ],
      ),
    );
  }
}
