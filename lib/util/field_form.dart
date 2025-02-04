import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FieldForm extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const FieldForm({
    required this.hintText,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
          prefixIcon: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              icon,
              color: const Color(0xFF344E41),
            ),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: hintText,
          hintStyle: GoogleFonts.roboto(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
