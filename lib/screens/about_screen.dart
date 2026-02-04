import 'package:flutter/material.dart';
import 'package:glass_onion_kanives_out/widgets/glass_card.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Acerca de'),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          // Background
          Positioned.fill(
            child: Image.asset(
              'assets/images/portada.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.85),
            ),
          ),
          // Content
          ListView(
            padding: const EdgeInsets.only(top: 100, left: 16, right: 16, bottom: 20),
            children: [
              GlassCard(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/Logo.png',
                      width: 200,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Un Misterio de Knives Out',
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: const Color(0xFFD4AF37),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'El detective Benoit Blanc viaja a Grecia para descifrar un misterio que gira en torno a un magnate de la tecnología y su variopinto grupo de amigos. Lo que comienza como un juego de misterio se convierte en una compleja red de mentiras.',
                      style: GoogleFonts.lato(fontSize: 16, height: 1.5),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Reparto Principal',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 24,
                    color: const Color(0xFFD4AF37),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              _buildCastList(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCastList() {
    final cast = [
      {'name': 'Daniel Craig', 'role': 'Benoit Blanc', 'img': 'https://media1.giphy.com/media/722YzptDVcFhK/giphy.webp?cid=790b7611aegof3z84s2mxpryy5ol9y9h5drhmddj4wcivul6&ep=v1_gifs_search&rid=giphy.webp&ct=g'},
      {'name': 'Edward Norton', 'role': 'Miles Bron', 'img': 'https://media4.giphy.com/media/n4GnKL68ol0ty/giphy.webp?cid=790b76111qv14amgeshb5y0ckwe25kvu9u3ex2x3zo2svzz4&ep=v1_gifs_search&rid=giphy.webp&ct=g'},
      {'name': 'Janelle Monáe', 'role': 'Andi Brand', 'img': 'https://media3.giphy.com/media/d96MYVKa29K1V04g9m/giphy.webp?cid=ecf05e472zomvc7rzjznun04dvw2svma1gc6c9dt2zk5xq3s&ep=v1_gifs_search&rid=giphy.webp&ct=g'},
      {'name': 'Kate Hudson', 'role': 'Birdie Jay', 'img': 'https://media1.giphy.com/media/LaspgCmf43cNbFcZAQ/200.webp?cid=ecf05e47lfjiuvnnmm26b3vx1ct5g8mhut7u2vbyz197uthm&ep=v1_gifs_search&rid=200.webp&ct=g'},
    ];

    return Column(
      children: cast.map((actor) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: GlassCard(
            opacity: 0.1,
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(actor['img']!),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      actor['name']!,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      actor['role']!,
                      style: TextStyle(color: Colors.white.withOpacity(0.7)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
