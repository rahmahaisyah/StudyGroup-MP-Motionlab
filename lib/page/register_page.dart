import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slicing_login/utils/app_style.dart';
import 'package:slicing_login/utils/rectangle.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeedf2),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Rectangle(
              labelText: 'Full Name',
              icon: Icons.person_outline,
              textStyle: Style.headline4,
            ),
            const Gap(10),
            Rectangle(
              labelText: 'Email',
              icon: Icons.email_outlined,
              textStyle: Style.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
