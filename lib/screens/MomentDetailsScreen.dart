import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MomentsScreen extends StatelessWidget {
  const MomentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Momentos'),
        backgroundColor: const Color.fromARGB(255, 204, 174, 26),
      ),
      body: ListView(
        children: [
          _buildTopImage(),
          _buildMomentItem(
            context,
            momentTitle: 'Jugando Among Us',
            subtitle: 'El detective Benoit Juega Among Us',
            imageUrl: 'https://media3.giphy.com/media/xcJ3z5QhF247a5MEGa/200.webp?cid=ecf05e47f2y172101u4uslc5c6nmmjxr2y3iv92qmlszhhpr&ep=v1_gifs_search&rid=200.webp&ct=g',
            videoId: '4dlm2RiqLAM',
            videoDescription: 'La escena en la que el detective Benoit Blanc se encuentra jugando Among Us en el baño es un momento inolvidable...',
          ),
          _buildMomentItem(
            context,
            momentTitle: 'Confrontación en la Mansión',
            subtitle: 'En esta parte del momento, Cassandra Brand comienza a romper las figuras de cristal para desenmascarar a Miles',
            imageUrl: 'https://media2.giphy.com/media/L6728enXg7fBDvoWnr/200.webp?cid=790b7611iul3phhg26mfsun0k3xfxcdtb7hxojac7uh7fhga&ep=v1_gifs_search&rid=200.webp&ct=g',
            videoId: 'i7ejtqVLEPg',
            videoDescription: 'En este dramático momento, Cassandra Brand, llena de determinación y furia contenida, se enfrenta a Miles Bron...',
          ),
          _buildMomentItem(
            context,
            momentTitle: 'Revelación en el Despacho',
            subtitle: 'Una escena tensa y emotiva en la que un personaje revela una verdad impactante en su despacho...',
            imageUrl: 'https://media4.giphy.com/media/SkiKXzhuQS4GtlD7K9/200.webp?cid=790b7611afgcw8k32d4pi7zx0n18n7hfd0c301o6ppf6mbng&ep=v1_gifs_search&rid=200.webp&ct=g',
            videoId: 'Y7Qd8ZvnIss',
            videoDescription: 'La escena se desarrolla en un despacho opulentamente decorado, reflejando el estatus y la personalidad del personaje...',
          ),
          // Agrega más elementos de momento aquí si es necesario
        ],
      ),
    );
  }

  Widget _buildTopImage() {
    return Center(
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/Logo.png',
            width: 470,
            height: 250,
          ),
        ),
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
    return ListTile(
      title: Text(momentTitle),
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: ElevatedButton(
        onPressed: () {
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
        child: const Text('Ver'),
      ),
    );
  }
}

class MomentDetailsScreen extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mejores Momentos'),
        backgroundColor: const Color.fromARGB(255, 204, 174, 26),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              momentTitle,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Container(
              constraints: const BoxConstraints(maxHeight: 400),
              child: SingleChildScrollView(
                child: Text(
                  videoDescription,
                  style: const TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 20),
            YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: videoId,
                flags: const YoutubePlayerFlags(
                  autoPlay: true,
                  mute: false,
                ),
              ),
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.amber,
              progressColors: const ProgressBarColors(
                playedColor: Colors.amber,
                handleColor: Colors.amberAccent,
              ),
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
    );
  }
}
