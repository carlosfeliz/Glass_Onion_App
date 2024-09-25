// glass_onion_app/lib/screens/contact_screen.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contrátame'),
        backgroundColor: const Color.fromARGB(255, 204, 174, 26),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16.0, 320.0, 16.0, 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage(
                      'assets/images/yo.png'), // Asegúrate de que la imagen esté en esta ruta
                ),
                const SizedBox(height: 20),
                const Text(
                  'Carlos Alberto Feliz Recio',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Desarrollador Móvil Flutter',
                  style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Si te ha gustado lo que he hecho con esta aplicación y estás buscando un desarrollador, puedes contactarme a través de los siguientes medios:',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () => _sendEmail('carlosa_feliz@outlook.com'),
                  child: const Text(
                    'Correo electrónico: carlosa_feliz@outlook.com',
                    style: TextStyle(
                        fontSize: 18, decoration: TextDecoration.underline),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () => _callNumber('+18293291204'),
                  child: const Text(
                    'Número de teléfono: 829-329-1204',
                    style: TextStyle(
                        fontSize: 18, decoration: TextDecoration.underline),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Positioned(
            top: 5,
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
                    height: 150,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _sendEmail(String email) async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );

    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch $_emailLaunchUri';
    }
  }

  Future<void> _callNumber(String phoneNumber) async {
    final Uri _phoneLaunchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );

    if (await canLaunch(_phoneLaunchUri.toString())) {
      await launch(_phoneLaunchUri.toString());
    } else {
      throw 'Could not launch $_phoneLaunchUri';
    }
  }
}
