import 'package:get/get.dart';
import '../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    // Di sini kita register controller
    Get.put<SplashController>(SplashController());

  }
}
