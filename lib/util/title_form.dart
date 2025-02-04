import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleFormPage extends StatelessWidget {
  final String title;
  final String desc;
  const TitleFormPage({
    required this.title,
    required this.desc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Create your account for Happy Shopping",
          style: GoogleFonts.roboto(
              fontSize: 18,
              color: const Color(0xFF707070),
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
