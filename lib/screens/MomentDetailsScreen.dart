import 'package:flutter/material.dart';
import 'package:glass_onion_kanives_out/widgets/glass_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MomentsScreen extends StatelessWidget {
  const MomentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Momentos'),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/portada.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          ListView(
            padding: const EdgeInsets.only(top: 100, left: 16, right: 16, bottom: 20),
            children: [
              _buildMomentItem(
                context,
                momentTitle: 'Jugando Among Us',
                subtitle: 'El detective Benoit vs la tecnología',
                imageUrl: 'https://media3.giphy.com/media/xcJ3z5QhF247a5MEGa/200.webp?cid=ecf05e47f2y172101u4uslc5c6nmmjxr2y3iv92qmlszhhpr&ep=v1_gifs_search&rid=200.webp&ct=g',
                videoId: '4dlm2RiqLAM',
                videoDescription: 'La escena en la que el detective Benoit Blanc se encuentra jugando Among Us en el baño es un momento inolvidable...',
              ),
              _buildMomentItem(
                context,
                momentTitle: 'Confrontación',
                subtitle: 'Rompiendo el silencio (y el cristal)',
                imageUrl: 'https://media2.giphy.com/media/L6728enXg7fBDvoWnr/200.webp?cid=790b7611iul3phhg26mfsun0k3xfxcdtb7hxojac7uh7fhga&ep=v1_gifs_search&rid=200.webp&ct=g',
                videoId: 'i7ejtqVLEPg',
                videoDescription: 'En este dramático momento, se desata el caos mientras se revelan las verdades ocultas...',
              ),
              _buildMomentItem(
                context,
                momentTitle: 'La Revelación',
                subtitle: 'Piezas que encajan',
                imageUrl: 'https://media4.giphy.com/media/SkiKXzhuQS4GtlD7K9/200.webp?cid=790b7611afgcw8k32d4pi7zx0n18n7hfd0c301o6ppf6mbng&ep=v1_gifs_search&rid=200.webp&ct=g',
                videoId: 'Y7Qd8ZvnIss',
                videoDescription: 'Una escena tensa y emotiva en la que finalmente todo cobra sentido...',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMomentItem(
    BuildContext context, {
    required String momentTitle,
    required String subtitle,
    required String imageUrl,
    required String videoId,
    required String videoDescription,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: GlassCard(
        padding: const EdgeInsets.all(0),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MomentDetailsScreen(
                momentTitle: momentTitle,
                videoId: videoId,
                videoDescription: videoDescription,
              ),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 180,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    Container(color: Colors.grey, child: const Icon(Icons.error)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    momentTitle,
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'VER VIDEO',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Icon(Icons.play_circle_outline, color: Theme.of(context).primaryColor),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MomentDetailsScreen extends StatefulWidget {
  final String momentTitle;
  final String videoId;
  final String videoDescription;

  const MomentDetailsScreen({
    Key? key,
    required this.momentTitle,
    required this.videoId,
    required this.videoDescription,
  }) : super(key: key);

  @override
  _MomentDetailsScreenState createState() => _MomentDetailsScreenState();
}

class _MomentDetailsScreenState extends State<MomentDetailsScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Reproduciendo'),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(color: Colors.black),
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 100, left: 16, right: 16, bottom: 20),
              child: Column(
                children: [
                  YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: const Color(0xFFD4AF37),
                    progressColors: const ProgressBarColors(
                      playedColor: Color(0xFFD4AF37),
                      handleColor: Colors.amberAccent,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    widget.momentTitle,
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFD4AF37),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    widget.videoDescription,
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
