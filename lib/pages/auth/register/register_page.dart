import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_shop/widget/button_app.dart';
import 'package:motion_shop/widget/field_form.dart';
import 'package:motion_shop/widget/title_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TitleFormPage(
                  title: "Register",
                  desc: "Create your account for Happy Shopping",
                ),
                const SizedBox(height: 25),
                const Column(
                  children: [
                    FieldForm(
                      hintText: "FullName",
                      icon: Icons.person_outline,
                    ),
                    FieldForm(
                      hintText: "Email",
                      icon: Icons.email_outlined,
                    ),
                    FieldForm(
                      hintText: "Password",
                      icon: Icons.lock_outline,
                    ),
                    FieldForm(
                      hintText: "Confirm Password",
                      icon: Icons.lock_outline,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
                ButtonApp(
                  onTap: () {
                    Navigator.pushNamed(context, "/");
                  },
                  text: "Register",
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ? ",
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/");
                      },
                      child: Text(
                        "Login",
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
