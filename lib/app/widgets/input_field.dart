import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final Widget? prefixIcon;
  final TextEditingController? controller; // Tambahkan ini

  const InputField({
    Key? key,
    required this.hintText,
    this.isPassword = false,
    this.prefixIcon,
    this.controller, // Tambahkan ini
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        controller: controller, // Gunakan controller di sini
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.roboto(
            fontSize: 14,
            color: const Color(0XFF344E41),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0XFF344E41)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0XFF344E41)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0XFF344E41)),
          ),
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
