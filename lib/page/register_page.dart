import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slicing_login/page/login_page.dart';
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Gap(220),
              Column(
                children: [
                  Text(
                    'Register',
                    style: Style.headline,
                    textAlign: TextAlign.center,
                  ),
                  const Gap(5),
                  Text(
                    'Create your account for Happy Shopping',
                    style: Style.headline2,
                    textAlign: TextAlign.center,
                  ),
                  const Gap(50),
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
                  const Gap(10),
                  Rectangle(
                    labelText: 'Password',
                    icon: Icons.lock_outline,
                    textStyle: Style.headline4,
                  ),
                  const Gap(10),
                  Rectangle(
                    labelText: 'Confirm Password',
                    icon: Icons.lock_outline,
                    textStyle: Style.headline4,
                  ),
                  const Gap(45),
                  RectangleButton(
                    bgColor: const Color(0xff00623B),
                    labelText: 'Register',
                    textStyle: Style.headline3.copyWith(color: Colors.white),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: Style.headline5,
                      ),
                      const Gap(9),
                      Text('Login', style: Style.headline6),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
