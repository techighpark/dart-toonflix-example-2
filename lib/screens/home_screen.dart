import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        foregroundColor: Colors.grey[900],
        elevation: 5,
        title: Text(
          "Today's Toons",
          style: GoogleFonts.bebasNeue(
            textStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              letterSpacing: 3.0,
            ),
          ),
        ),
      ),
    );
  }
}
