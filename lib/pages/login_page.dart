import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_page/pages/register_page.dart';
import 'package:home_page/widgets/custom_text_field_widget.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Center(
            child: SizedBox(
              child:
                  Lottie.asset(height: 300, 'assets/images/lottie/lottie.json'),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Login page",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 25,
                color: Colors.blue,
              ),
            ),
          ),
          CustomTextFieldWidget(),
          CustomTextFieldWidget(),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
            child: const Text('Register'),
          ),
        ],
      ),
    ));
  }
}
