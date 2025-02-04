import 'package:get/get.dart';
import 'package:motion_shop/service/auth_service.dart';
import 'package:motion_shop/app/routes/app_pages.dart';

class SplashController extends GetxController {
  final AuthService _authService = AuthService();

  @override
  void onInit() {
    super.onInit();
    checkLoginStatus();
  }

  Future<void> checkLoginStatus() async {
    await Future.delayed(const Duration(seconds: 3));
    try {
      final userData = await _authService.getCurrentUser();
      Get.offNamed(Routes.HOME);
    } catch (e) {
      Get.offNamed(Routes.LOGIN);
    }
  }
}
