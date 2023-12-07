import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleGarage extends StatelessWidget {
  final String title;
  const TitleGarage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.montserrat(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700));
  }
}
