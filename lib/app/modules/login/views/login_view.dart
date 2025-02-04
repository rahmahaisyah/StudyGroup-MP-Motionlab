import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:motion_shop/app/widgets/input_field.dart';
import 'package:motion_shop/app/widgets/confirmation_user_account.dart';
import 'package:motion_shop/app/ui_kit/colors.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor2,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/lottie/login_cart.json', height: 300),
            Text(
              "Welcome!",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Happy Shopping All",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColor.grayColor,
              ),
            ),
            const InputField(
              hintText: 'Email',
              prefixIcon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.email), // atau pakai Image.asset
              ),
            ),
            const InputField(
              hintText: 'Password',
              isPassword: true,
              prefixIcon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.lock), // atau pakai Image.asset
              ),
            ),
            ConfirmationUserAccount(
              buttonText: "Login",
              displayText: "Don't have an account? ",
              onTap: () {
                // Arahkan ke register
                Get.toNamed('/register');
              },
            ),
          ],
        ),
      ),
    );
  }
}
