import 'package:flutter/material.dart';
import 'package:glass_onion_kanives_out/widgets/glass_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Contrátame'),
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
              color: Colors.black.withOpacity(0.85),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  GlassCard(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFFD4AF37),
                              width: 3,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFFD4AF37).withOpacity(0.3),
                                blurRadius: 20,
                                spreadRadius: 5,
                              )
                            ],
                          ),
                          child: const CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage('assets/images/yo.png'),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Carlos Alberto Feliz Recio',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Desarrollador Móvil Flutter',
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1.5,
                            color: const Color(0xFFD4AF37),
                          ),
                        ),
                        const SizedBox(height: 30),
                        _buildContactRow(
                          icon: Icons.email_outlined,
                          text: 'carlosa_feliz@outlook.com',
                          onTap: () => _sendEmail('carlosa_feliz@outlook.com'),
                        ),
                        const SizedBox(height: 15),
                        _buildContactRow(
                          icon: Icons.phone_iphone,
                          text: '829-329-1204',
                          onTap: () => _callNumber('+18293291204'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Opacity(
                    opacity: 0.7,
                    child: Image.asset(
                      'assets/images/Logo.png',
                      width: 150,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactRow({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white12),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white.withOpacity(0.05),
        ),
        child: Row(
          children: [
            Icon(icon, color: const Color(0xFFD4AF37)),
            const SizedBox(width: 15),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            const Icon(Icons.arrow_forward, color: Colors.white24, size: 16),
          ],
        ),
      ),
    );
  }

  Future<void> _sendEmail(String email) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (!await launchUrl(emailLaunchUri)) {
      debugPrint('Could not launch $emailLaunchUri');
    }
  }

  Future<void> _callNumber(String phoneNumber) async {
    final Uri phoneLaunchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (!await launchUrl(phoneLaunchUri)) {
       debugPrint('Could not launch $phoneLaunchUri');
    }
  }
}
