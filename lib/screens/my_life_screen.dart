// glass_onion_app/lib/screens/my_life_screen.dart
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MyLifeScreen extends StatefulWidget {
  const MyLifeScreen({super.key});

  @override
  _MyLifeScreenState createState() => _MyLifeScreenState();
}

class _MyLifeScreenState extends State<MyLifeScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    const videoUrl = 'cG6SeFx1Iw4';
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoUrl)!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('En mi vida'),
        backgroundColor: const Color.fromARGB(255, 204, 174, 26),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16.0, 320.0, 16.0, 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 20),
                const Text(
                  'La película "Glass Onion: Un misterio de Knives Out" ha sido una parte integral de mi vida. Me ha enseñado a valorar el humor y la amistad en el trabajo. Este intrigante thriller no solo me entretuvo con su trama ingeniosa y giros inesperados, sino que también me inspiró a apreciar las complejidades de las relaciones humanas y a buscar siempre la verdad detrás de las apariencias. A través de sus personajes vívidos y sus diálogos astutos, he aprendido a mantener una mente aguda y a cuestionar todo lo que parece evidente. En definitiva, "Glass Onion: Un misterio de Knives Out" ha dejado una huella profunda en mí, recordándome que las historias bien contadas no solo entretienen, sino que también enseñan lecciones valiosas sobre la vida y el comportamiento humano.',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.amber,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Volver'),
                ),
              ],
            ),
          ),
          Positioned(
            top: -5,
            left: 0,
            right: 0,
            child: Center(
              child: Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/Logo.png',
                    width: 450,
                    height: 250,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
