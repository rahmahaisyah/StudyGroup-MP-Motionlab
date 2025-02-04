import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'package:motion_shop/widget/button_app.dart';
import 'package:motion_shop/widget/field_form.dart';
import 'package:motion_shop/widget/title_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LottieBuilder.asset(
                  "assets/animation/signin.json",
                  width: 265.9,
                  height: 280,
                ),
                const TitleFormPage(
                  title: "Welcome!",
                  desc: "Happy Shopping All",
                ),
                const Column(
                  children: [
                    FieldForm(
                      hintText: "Email",
                      icon: Icons.email_outlined,
                    ),
                    FieldForm(
                      hintText: "Password",
                      icon: Icons.lock_outline,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                ButtonApp(
                  onTap: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  text: "Login",
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/register");
                      },
                      child: Text(
                        "Register",
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF00623B),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
