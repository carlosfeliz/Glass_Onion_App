import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';

import 'MomentDetailsScreen.dart';
import 'about_screen.dart';
import 'characters_screen.dart';
import 'contact_screen.dart';
import 'my_life_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showBackground = true;
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();

    _audioPlayer = AudioPlayer();
    _playIntroSound();

    // Ocultar el fondo después de 5 segundos
    Timer(const Duration(seconds: 5), () {
      if (mounted) {
        setState(() {
          _showBackground = false;
        });
        _audioPlayer.stop(); // Detener el sonido después de 5 segundos
      }
    });
  }

  void _playIntroSound() async {
    await _audioPlayer.play(AssetSource('audio/intro.mp3')); // Ruta del archivo de audio
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Glass Onion: Knives Out'),
        backgroundColor: const Color.fromARGB(255, 204, 174, 26),
      ),
      body: Stack(
        children: [
          // Fondo de pantalla animado
          AnimatedContainer(
            duration: const Duration(seconds: 2),
            color: _showBackground ? Colors.transparent : Colors.black,
            curve: Curves.easeInOut,
            child: Opacity(
              opacity: _showBackground ? 1.0 : 0.0,
              child: Image.asset(
                'assets/images/portada.jpg', // Ruta de la imagen de fondo
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          // Contenido principal
          AnimatedOpacity(
            opacity: _showBackground ? 0.0 : 1.0,
            duration: const Duration(seconds: 1),
            child: Center(
              child: ListView(
                padding: const EdgeInsets.all(10.0),
                children: <Widget>[
                  _buildCard(
                    context,
                    title: 'Personajes',
                    subtitle: 'Conoce a los personajes',
                    imageUrl:
                    'https://media3.giphy.com/media/jMmTaTaWdt9TLYXP2M/200w.webp',
                    screen: const CharactersScreen(),
                  ),
                  const SizedBox(height: 20),
                  _buildCard(
                    context,
                    title: 'Momentos',
                    subtitle: 'Revive los mejores momentos',
                    imageUrl:
                    'https://media1.giphy.com/media/qhyzRDeBE1OZN6SVys/200w.webp',
                    screen: const MomentsScreen(),
                  ),
                  const SizedBox(height: 20),
                  _buildCard(
                    context,
                    title: 'Acerca de la Pelicula',
                    subtitle: 'Más información sobre nosotros',
                    imageUrl:
                    'https://media0.giphy.com/media/v1o24MxvdqkLszsv1d/200w.webp',
                    screen: const AboutScreen(),
                  ),
                  const SizedBox(height: 20),
                  _buildCard(
                    context,
                    title: 'En mi vida',
                    subtitle: 'Cómo esto impacta mi vida',
                    imageUrl:
                    'https://media3.giphy.com/media/26tn33aiTi1jkl6H6/200.webp?cid=790b76115261enw015ecwt8d5vlzrx0bqpaiaugd5h7foygj&ep=v1_gifs_search&rid=200.webp&ct=g',
                    screen: const MyLifeScreen(),
                  ),
                  const SizedBox(height: 20),
                  _buildCard(
                    context,
                    title: 'Contacto',
                    subtitle: 'Ponte en contacto conmigo',
                    imageUrl:
                    'https://media-mia3-2.cdn.whatsapp.net/v/t61.24694-24/325950629_1426530754420584_1281439311613197920_n.jpg?ccb=11-4&oh=01_Q5AaIDswTg2-nsjTHWE1f9j4zoO6cdoW6vnJf1JbGEWNT8dy&oe=6675F3A9&_nc_sid=e6ed6c&_nc_cat=105',
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

  Widget _buildCard(BuildContext context,
      {required String title,
        required String subtitle,
        required String imageUrl,
        required Widget screen}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(subtitle),
            ),
          ],
        ),
      ),
    );
  }
}
