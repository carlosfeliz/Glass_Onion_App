import 'package:flutter/material.dart';
import 'package:glass_onion_kanives_out/widgets/glass_card.dart';
import 'package:google_fonts/google_fonts.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Personajes'),
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
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          // Content
          ListView(
            padding: const EdgeInsets.only(top: 100, left: 16, right: 16, bottom: 20),
            children: [
              Center(
                child: Image.asset(
                  'assets/images/Logo.png',
                  width: 250,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),
              const _CharacterTile(
                name: 'Benoit Blanc',
                role: 'El Detective',
                description:
                    'Benoit Blanc es un detective privado de renombre internacional, conocido por su estilo peculiar y su astucia sin igual. Con una personalidad excéntrica y una mente brillante, Blanc se ha ganado una reputación como un investigador excepcional.',
                imageUrl: 'https://media1.giphy.com/media/5pw1H1716Gb3Hd5TPH/giphy.webp?cid=ecf05e47vioq3q2tr2rzs2la4laacbkqmo5gn8jp95xja9nq&ep=v1_gifs_search&rid=giphy.webp&ct=g',
              ),
              const _CharacterTile(
                name: 'Miles Bron',
                role: 'El Magnate',
                description:
                    'Miles Bron es un magnate de la tecnología conocido por su visión innovadora y su enfoque disruptivo. Como fundador de varias empresas exitosas en el ámbito tecnológico, Bron ha dejado una marca indeleble en la industria.',
                imageUrl: 'https://media0.giphy.com/media/lxvEtWtbqNoPiqjXZs/200.webp?cid=790b761149jnnuy1pdhwrmewshavgfqk2zby63q0zdtjsw0l&ep=v1_gifs_search&rid=200.webp&ct=g',
              ),
              const _CharacterTile(
                name: 'Birdie Jay',
                role: 'La Fashionista',
                description:
                    'Birdie Jay es una diseñadora de moda icónica, cuyo estilo único y vanguardista ha dejado una marca indeleble en la industria de la moda.',
                imageUrl: 'https://media4.giphy.com/media/vREllsnBIz8VO98Zju/giphy.webp?cid=790b761149jnnuy1pdhwrmewshavgfqk2zby63q0zdtjsw0l&ep=v1_gifs_search&rid=giphy.webp&ct=g',
              ),
              const _CharacterTile(
                name: 'Duke Cody',
                role: 'El Streamer',
                description:
                    'Duke Cody es un influyente y carismático creador de contenido en línea, conocido por su canal de YouTube dedicado a la exploración de destinos exóticos.',
                imageUrl: 'https://media1.giphy.com/media/EojmYZsO3Kdaadd07Y/giphy.webp?cid=790b761149jnnuy1pdhwrmewshavgfqk2zby63q0zdtjsw0l&ep=v1_gifs_search&rid=giphy.webp&ct=g',
              ),
              const _CharacterTile(
                name: 'Cassandra Brand',
                role: 'La Visionaria',
                description:
                    'Cassandra "Andi" Brand es una emprendedora tecnológica visionaria y cofundadora de Alpha, una innovadora empresa de tecnología.',
                imageUrl: 'https://media3.giphy.com/media/flSw9sa0EMokneEczF/giphy.webp?cid=ecf05e47vioq3q2tr2rzs2la4laacbkqmo5gn8jp95xja9nq&ep=v1_gifs_search&rid=giphy.webp&ct=g',
              ),
               const _CharacterTile(
                name: 'Claire Debella',
                role: 'La Gobernadora',
                description:
                    'Claire Debella es una figura política destacada y la actual gobernadora del estado de Connecticut. Con una larga trayectoria en el servicio público.',
                imageUrl: 'https://media1.giphy.com/media/GIO070K5yoRBMoRWI1/200.webp?cid=790b761149jnnuy1pdhwrmewshavgfqk2zby63q0zdtjsw0l&ep=v1_gifs_search&rid=200.webp&ct=g',
              ),
               const _CharacterTile(
                name: 'Lionel Toussaint',
                role: 'El Científico',
                description:
                    'Lionel Toussaint es un brillante científico y el cerebro detrás de muchos de los inventos revolucionarios desarrollados por la compañía de Miles Bron.',
                imageUrl: 'https://media0.giphy.com/media/yT2qhNIbHYKlPM1D64/200.webp?cid=790b761149jnnuy1pdhwrmewshavgfqk2zby63q0zdtjsw0l&ep=v1_gifs_search&rid=200.webp&ct=g',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CharacterTile extends StatelessWidget {
  final String name;
  final String role;
  final String description;
  final String imageUrl;

  const _CharacterTile({
    required this.name,
    required this.role,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: GlassCard(
        onTap: () => _showDetails(context),
        child: Row(
          children: [
            Hero(
              tag: name,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: const Color(0xFFD4AF37), width: 2),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    role,
                    style: TextStyle(
                      color: const Color(0xFFD4AF37).withOpacity(0.9),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.info_outline, color: Colors.white54),
          ],
        ),
      ),
    );
  }

  void _showDetails(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.5,
        maxChildSize: 0.9,
        expand: false, // Critical: Allows tapping outside (above the sheet) to dismiss
        builder: (_, controller) => Container(
          decoration: const BoxDecoration(
            color: Color(0xFF1C2526),
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 20)],
          ),
          child: Stack(
            children: [
              ListView(
                controller: controller,
                padding: const EdgeInsets.all(24),
                children: [
                  Center(
                    child: Container(
                      width: 50,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Hero(
                      tag: name,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: NetworkImage(imageUrl),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFD4AF37),
                    ),
                  ),
                  Text(
                    role,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 1,
                    color: Colors.white10,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    description,
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              Positioned(
                top: 15,
                right: 15,
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.white54),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
