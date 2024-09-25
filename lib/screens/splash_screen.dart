import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();

    // Inicializa el AnimationController y la animación
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    _controller.forward();

    // Inicializa el reproductor de audio y reproduce el archivo de audio
    _audioPlayer = AudioPlayer();
    _playAudio();

    // Timer para navegar a Home después de 5 segundos
    Timer(const Duration(seconds: 5), () {
      _audioPlayer.stop(); // Detiene la reproducción de audio al navegar a HomeScreen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  // Función para reproducir el audio desde los assets
  void _playAudio() async {
    await _audioPlayer.play(AssetSource('audio/suspenso.mp3')); // Ruta de tu archivo de audio
  }

  @override
  void dispose() {
    _controller.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Image.asset(
            'assets/images/Logo.png', // Ruta de tu archivo de imagen
            width: 400,
            height: 400,
          ),
        ),
      ),
    );
  }
}
