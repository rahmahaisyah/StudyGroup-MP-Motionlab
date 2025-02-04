import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:motion_shop/app/widgets/input_field.dart';
import 'package:motion_shop/app/widgets/confirmation_user_account.dart';
import 'package:motion_shop/app/ui_kit/colors.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
            InputField(
              controller: usernameController,
              hintText: 'Username',
              prefixIcon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.person),
              ),
            ),
            InputField(
              controller: passwordController,
              hintText: 'Password',
              isPassword: true,
              prefixIcon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.lock),
              ),
            ),
            ConfirmationUserAccount(
              buttonText: "Login",
              displayText: "Don't have an account? ",
              onTap: () {
                Get.toNamed('/register');
              },
              onLoginTap: () {
                controller.login(
                    usernameController.text, passwordController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
