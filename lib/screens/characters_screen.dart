// glass_onion_app/lib/screens/characters_screen.dart
import 'package:flutter/material.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personajes'),
        backgroundColor: const Color.fromARGB(255, 204, 174, 26),
      ),
      body: ListView(
        children: [
          Center(
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
          ),
          const _CharacterTile(
            name: 'Benoit Blanc',
            shortDescription: 'El detective privado',
            longDescription:
                'Benoit Blanc es un detective privado de renombre internacional, conocido por su estilo peculiar y su astucia sin igual. Con una personalidad excéntrica y una mente brillante, Blanc se ha ganado una reputación como un investigador excepcional capaz de resolver los casos más complicados. Su presencia en una escena del crimen a menudo impulsa la especulación y el misterio, y su habilidad para encontrar la verdad lo convierte en una figura legendaria en el mundo de la investigación criminal. Blanc es conocido por su habilidad para leer entre líneas y descubrir pistas ocultas, utilizando un enfoque único y poco ortodoxo que lo diferencia de otros detectives. Su estilo distintivo y su habilidad para desentrañar los misterios más intrincados lo convierten en un personaje intrigante y memorable en la historia del cine. A lo largo de su carrera, Blanc ha resuelto numerosos casos difíciles, ganándose el respeto y la admiración de sus colegas y adversarios por igual. Su presencia en "Glass Onion Knives Out" promete desentrañar los secretos y las intrigas de una familia adinerada, llevando al público a un viaje emocionante lleno de giros y sorpresas.',
            imageUrl: 'https://media1.giphy.com/media/5pw1H1716Gb3Hd5TPH/giphy.webp?cid=ecf05e47vioq3q2tr2rzs2la4laacbkqmo5gn8jp95xja9nq&ep=v1_gifs_search&rid=giphy.webp&ct=g',
          ),
          const _CharacterTile(
            name: 'Miles Bron',
            shortDescription: 'El multimillonario tecnólogo',
            longDescription:
                'Miles Bron es un magnate de la tecnología conocido por su visión innovadora y su enfoque disruptivo. Como fundador de varias empresas exitosas en el ámbito tecnológico, Bron ha dejado una marca indeleble en la industria. Su capacidad para anticipar las tendencias emergentes y su audacia para explorar nuevas fronteras tecnológicas lo han convertido en un verdadero pionero en su campo. Con una mente aguda y un instinto empresarial excepcional, Bron ha demostrado ser un líder visionario capaz de transformar ideas audaces en realidades tangibles. Su éxito empresarial lo ha catapultado a la cima del mundo empresarial, donde es ampliamente admirado y respetado por sus logros. A pesar de su estatus y riqueza, Bron sigue siendo un enigma para muchos, con secretos ocultos detrás de su fachada pública de éxito y prosperidad. Su participación en "Glass Onion Knives Out" promete revelar más sobre su intrigante personalidad y sus motivaciones, desafiando las expectativas y manteniendo al público en vilo.',
            imageUrl: 'https://media0.giphy.com/media/lxvEtWtbqNoPiqjXZs/200.webp?cid=790b761149jnnuy1pdhwrmewshavgfqk2zby63q0zdtjsw0l&ep=v1_gifs_search&rid=200.webp&ct=g',
          ),
          const _CharacterTile(
            name: 'Birdie Jay',
            shortDescription: 'La fashionista',
            longDescription:
                'Birdie Jay es una diseñadora de moda icónica, cuyo estilo único y vanguardista ha dejado una marca indeleble en la industria de la moda. Reconocida por su creatividad sin límites y su capacidad para desafiar las convenciones, Jay ha ganado elogios tanto de críticos como de celebridades de todo el mundo. Sus creaciones audaces y expresivas han adornado las pasarelas más importantes y han sido admiradas en las alfombras rojas de los eventos más exclusivos. Con un ojo para el detalle y una pasión por la innovación, Jay continúa inspirando y sorprendiendo con cada una de sus colecciones. Su influencia en la moda va más allá de las prendas que diseña, ya que también es una figura de liderazgo en la promoción de la diversidad y la inclusión en la industria. A pesar de su éxito y reconocimiento mundial, Jay sigue siendo fiel a su visión artística y su compromiso con la autenticidad, lo que la convierte en una fuerza influyente en el mundo de la moda contemporánea.',
            imageUrl: 'https://media4.giphy.com/media/vREllsnBIz8VO98Zju/giphy.webp?cid=790b761149jnnuy1pdhwrmewshavgfqk2zby63q0zdtjsw0l&ep=v1_gifs_search&rid=giphy.webp&ct=g',
          ),
          const _CharacterTile(
            name: 'Duke Cody',
            shortDescription: 'El Youtuber',
            longDescription:
                'Duke Cody es un influyente y carismático creador de contenido en línea, conocido por su canal de YouTube dedicado a la exploración de destinos exóticos y la experiencia de viajar por el mundo. Aventurero de corazón, Cody ha cautivado a su audiencia con sus emocionantes hazañas y sus vibrantes narrativas, llevando a sus seguidores en viajes virtuales a lugares remotos y exóticos. Apasionado por la cultura y las tradiciones, Cody se embarca en una emocionante aventura a Grecia junto a su novia más joven y coprotagonista de su canal, Whiskey, interpretada por Madelyn Cline. Juntos, exploran los tesoros históricos y las maravillas naturales de este antiguo país, mientras comparten sus experiencias a través de la lente de su cámara y la pantalla de sus dispositivos. Con una mezcla única de intriga, humor y espontaneidad, Duke Cody continúa inspirando a otros a descubrir el mundo que los rodea y a vivir la vida al máximo.',
            imageUrl: 'https://media1.giphy.com/media/EojmYZsO3Kdaadd07Y/giphy.webp?cid=790b761149jnnuy1pdhwrmewshavgfqk2zby63q0zdtjsw0l&ep=v1_gifs_search&rid=giphy.webp&ct=g',
          ),
          const _CharacterTile(
            name: 'Cassandra Brand',
            shortDescription: 'La Hermana de la Asesinada',
            longDescription:
                'Cassandra "Andi" Brand es una emprendedora tecnológica visionaria y cofundadora de Alpha, una innovadora empresa de tecnología que ha revolucionado la industria con sus productos y servicios de vanguardia. Apasionada por la innovación y la creatividad, Andi es reconocida por su mente brillante y su habilidad para pensar en soluciones fuera de lo común. La idea de Alpha surgió de su visión audaz y su deseo de transformar el mundo a través de la tecnología. Sin embargo, a pesar de su papel crucial en el desarrollo inicial de la empresa, Andi fue rechazada por Miles como socia comercial, lo que provocó tensiones y conflictos en su relación profesional y personal. Además, Andi comparte un vínculo especial con su hermana gemela, Helen, cuya complicidad y apoyo mutuo han sido fundamentales en su viaje emprendedor. Juntas, las hermanas Brand enfrentan desafíos y adversidades mientras luchan por hacer realidad su visión y dejar su huella en el mundo tecnológico.',
            imageUrl: 'https://media3.giphy.com/media/flSw9sa0EMokneEczF/giphy.webp?cid=ecf05e47vioq3q2tr2rzs2la4laacbkqmo5gn8jp95xja9nq&ep=v1_gifs_search&rid=giphy.webp&ct=g',
          ),
          const _CharacterTile(
            name: 'Claire Debella',
            shortDescription: 'La Gobernadora',
            longDescription:
                'Claire Debella es una figura política destacada y la actual gobernadora del estado de Connecticut. Con una larga trayectoria en el servicio público, Claire ha dedicado su carrera a servir a su comunidad y luchar por el bienestar de sus ciudadanos. Como gobernadora, ha implementado políticas progresistas en áreas como la educación, la salud y la economía, buscando siempre mejorar la calidad de vida de sus conciudadanos. Ahora, Claire ha decidido dar un paso adelante y presentarse como candidata al Senado de los Estados Unidos, con la esperanza de llevar su visión y liderazgo a nivel nacional. Su campaña se centra en cuestiones clave como la igualdad de oportunidades, la justicia social y la reforma política, y su determinación y dedicación la convierten en una candidata formidable y respetada en el ámbito político.',
            imageUrl: 'https://media1.giphy.com/media/GIO070K5yoRBMoRWI1/200.webp?cid=790b761149jnnuy1pdhwrmewshavgfqk2zby63q0zdtjsw0l&ep=v1_gifs_search&rid=200.webp&ct=g',
          ),
          const _CharacterTile(
            name: 'Lionel Toussaint',
            shortDescription: 'El Inventor',
            longDescription:
                'Lionel Toussaint es un brillante científico y el cerebro detrás de muchos de los inventos revolucionarios desarrollados por la compañía de Miles Bron. Como científico principal, Lionel lidera un equipo de investigadores y expertos en tecnología para crear soluciones innovadoras en una variedad de campos, desde la inteligencia artificial hasta la energía renovable. Su mente creativa y su habilidad para resolver problemas lo convierten en un activo invaluable para la empresa, y su colaboración con Miles ha llevado a la creación de productos que han transformado industrias enteras. Lionel es conocido por su enfoque meticuloso y su pasión por la ciencia, y cada vez que Miles le envía un nuevo desafío por fax, está listo para ponerse manos a la obra y hacer realidad las ideas más audaces.',
            imageUrl: 'https://media0.giphy.com/media/yT2qhNIbHYKlPM1D64/200.webp?cid=790b761149jnnuy1pdhwrmewshavgfqk2zby63q0zdtjsw0l&ep=v1_gifs_search&rid=200.webp&ct=g',
          ),
        ],
      ),
    );
  }
}

class _CharacterTile extends StatelessWidget {
  final String name;
  final String shortDescription;
  final String longDescription;
  final String imageUrl;

  const _CharacterTile({
    required this.name,
    required this.shortDescription,
    required this.longDescription,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Show modal with character details
        showModalBottomSheet(
          context: context,
          builder: (context) => _CharacterDetailsModal(
            name: name,
            description: longDescription,
            imageUrl: imageUrl,
          ),
        );
      },
      child: ListTile(
        title: Text(name),
        subtitle: Text(shortDescription), // Display short description here
        leading: CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}

class _CharacterDetailsModal extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;

  const _CharacterDetailsModal({
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 100, // Adjust radius to adjust avatar size
              backgroundImage: NetworkImage(imageUrl),
            ),
            const SizedBox(height: 16),
            Text(
              name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              child: Text(
                description,
                textAlign: TextAlign.center,
              ), // Display long description here
            ),
          ],
        ),
      ),
    );
  }
}
