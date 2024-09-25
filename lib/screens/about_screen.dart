import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de'),
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
                  'Glass Onion: Un misterio de Knives Out es una película de misterio y comedia dirigida por Rian Johnson y protagonizada por Daniel Craig como el detective Benoit Blanc.',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  'La película sigue a Benoit Blanc, un detective privado, que es invitado a una isla privada en Grecia por Miles Bron, un multimillonario tecnólogo. La trama se complica cuando un asesinato ocurre durante la reunión, y Blanc debe usar su ingenio para desenmascarar al culpable.',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Resumen Detallado:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  'En "Glass Onion: Un misterio de Knives Out", el brillante y excéntrico detective Benoit Blanc es invitado a la lujosa isla privada de Miles Bron, un magnate tecnológico conocido por su carácter carismático y sus extravagantes fiestas. Blanc se une a un grupo diverso de amigos y asociados de Bron, cada uno con sus propios secretos y motivos ocultos.',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                const Text(
                  'La historia toma un giro oscuro cuando, durante una de las fastuosas cenas organizadas por Bron, uno de los invitados es encontrado muerto. Con todos los presentes siendo sospechosos y las tensiones aumentando, Blanc debe desentrañar una red de mentiras, celos y traiciones. A medida que avanza la investigación, se revelan sorprendentes conexiones entre los personajes y sus pasados, aumentando la intriga y el suspense.',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                const Text(
                  'La película destaca por su ingenioso guion, lleno de giros inesperados y humor negro, así como por las actuaciones estelares de su elenco, encabezado por Daniel Craig. La dirección de Rian Johnson logra mantener al público al borde de sus asientos, mientras se exploran temas de poder, corrupción y justicia.',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Con una cinematografía impresionante que captura la belleza exótica de la isla griega y un diseño de producción que resalta la opulencia y el misterio, "Glass Onion: Un misterio de Knives Out" es una adición memorable al género de los thrillers de asesinato. La película no solo entretiene, sino que también invita a la reflexión sobre la naturaleza humana y las complejidades de la verdad.',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Elenco Principal:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                buildCastMember(
                  name: 'Daniel Craig como Benoit Blanc',
                  imageUrl: 'https://media1.giphy.com/media/722YzptDVcFhK/giphy.webp?cid=790b7611aegof3z84s2mxpryy5ol9y9h5drhmddj4wcivul6&ep=v1_gifs_search&rid=giphy.webp&ct=g',
                ),
                buildCastMember(
                  name: 'Edward Norton como Miles Bron',
                  imageUrl: 'https://media4.giphy.com/media/n4GnKL68ol0ty/giphy.webp?cid=790b76111qv14amgeshb5y0ckwe25kvu9u3ex2x3zo2svzz4&ep=v1_gifs_search&rid=giphy.webp&ct=g',
                ),
                buildCastMember(
                  name: 'Janelle Monáe como Cassandra "Andi" Brand',
                  imageUrl: 'https://media3.giphy.com/media/d96MYVKa29K1V04g9m/giphy.webp?cid=ecf05e472zomvc7rzjznun04dvw2svma1gc6c9dt2zk5xq3s&ep=v1_gifs_search&rid=giphy.webp&ct=g',
                ),
                buildCastMember(
                  name: 'Kathryn Hahn como Claire Debella',
                  imageUrl: 'https://media2.giphy.com/media/3zhHLx87uF8IJvBUvd/200.webp?cid=790b7611qokgaeelzdybep8two38nit6efguvas8ga4vj6ok&ep=v1_gifs_search&rid=200.webp&ct=g',
                ),
                buildCastMember(
                  name: 'Leslie Odom Jr. como Lionel Toussaint',
                  imageUrl: 'https://media4.giphy.com/media/l4HnU4iiDYheSvQOI/giphy.webp?cid=790b7611c8rlu9rndc1icxl09bwz9iyurnh7g6k0ikgqsl3g&ep=v1_gifs_search&rid=giphy.webp&ct=g',
                ),
                buildCastMember(
                  name: 'Kate Hudson como Birdie Jay',
                  imageUrl: 'https://media1.giphy.com/media/LaspgCmf43cNbFcZAQ/200.webp?cid=ecf05e47lfjiuvnnmm26b3vx1ct5g8mhut7u2vbyz197uthm&ep=v1_gifs_search&rid=200.webp&ct=g',
                ),
                buildCastMember(
                  name: 'Dave Bautista como Duke Cody',
                  imageUrl: 'https://media2.giphy.com/media/lT4lR9GmmGYOQptX74/200.webp?cid=790b76116fzoa3kcq3j2vmifl8uh5rf9gic6e5gyjshqkamg&ep=v1_gifs_search&rid=200.webp&ct=g',
                ),
                const SizedBox(height: 20),
                const Text(
                  'Dirigida por Rian Johnson, "Glass Onion: Un misterio de Knives Out" es una película que cautiva y sorprende a cada paso, consolidándose como una obra maestra del cine contemporáneo de misterio.',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.justify,
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

  Widget buildCastMember({required String name, required String imageUrl}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              name,
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
