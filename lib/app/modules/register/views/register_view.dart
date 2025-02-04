import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:motion_shop/app/widgets/input_field.dart';
import 'package:motion_shop/app/widgets/confirmation_user_account.dart';
import 'package:motion_shop/app/ui_kit/colors.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor2,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Register",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Create your account for Happy Shopping",
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColor.grayColor,
              ),
            ),
            const SizedBox(height: 30),
            const InputField(
              hintText: 'Full Name',
              prefixIcon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.person),
              ),
            ),
            const InputField(
              hintText: 'Email',
              prefixIcon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.email),
              ),
            ),
            const InputField(
              hintText: 'Password',
              isPassword: true,
              prefixIcon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.lock),
              ),
            ),
            const InputField(
              hintText: 'Confirm Password',
              isPassword: true,
              prefixIcon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.lock),
              ),
            ),
            ConfirmationUserAccount(
              buttonText: "Register",
              displayText: "Already have an account? ",
              onTap: () {
                Get.back(); // atau Get.toNamed(AppRoutes.LOGIN);
              },
            ),
          ],
        ),
      ),
    );
  }
}
