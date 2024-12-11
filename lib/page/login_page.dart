import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:slicing_login/utils/app_style.dart';
import 'package:slicing_login/utils/rectangle.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeedf2),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
                context); // Menutup halaman login dan kembali ke halaman sebelumnya
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Gap(50),
              Container(
                child: Lottie.asset(
                    height: 270, width: 270, 'assets/lottie1.json'),
              ),
              Text(
                'Welcome!',
                style: Style.headline,
                textAlign: TextAlign.center,
              ),
              const Gap(3),
              Text(
                'Happy Shopping All',
                style: Style.headline2,
                textAlign: TextAlign.center,
              ),
              const Gap(18),
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
              const Gap(40),
              RectangleButton(
                bgColor: const Color(0xff00623B),
                labelText: 'Login',
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
                    'Don’t have an account? ',
                    style: Style.headline5,
                  ),
                  const Gap(5),
                  Text('Register', style: Style.headline6),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
