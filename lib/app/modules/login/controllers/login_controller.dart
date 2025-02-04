import 'package:get/get.dart';
import 'package:motion_shop/service/auth_service.dart';

class LoginController extends GetxController {
  final AuthService _authService = AuthService();

  Future<void> login(String username, String password) async {
    try {
      final userData = await _authService.login(username, password);
      Get.offNamed('/home');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
