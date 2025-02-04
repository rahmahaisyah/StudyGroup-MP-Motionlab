import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmationUserAccount extends StatelessWidget {
  final String buttonText;
  final String displayText;
  final VoidCallback onTap;
  final VoidCallback onLoginTap;

  const ConfirmationUserAccount({
    Key? key,
    required this.buttonText,
    required this.displayText,
    required this.onTap,
    required this.onLoginTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onLoginTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFF00623B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                minimumSize: const Size(double.infinity, 55),
              ),
              child: Text(
                buttonText,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(displayText),
            GestureDetector(
              onTap: onTap,
              child: Text(
                buttonText == "Login" ? "Register" : "Login",
                style: GoogleFonts.roboto(
                  color: const Color(0XFF00623B),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
