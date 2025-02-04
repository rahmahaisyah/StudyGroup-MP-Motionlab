import 'package:get/get.dart';
import 'package:motion_shop/pages/home/views/auth/auth_login/login_page.dart';
import 'package:motion_shop/pages/home/views/auth/auth_register/register_page.dart';
import 'package:motion_shop/pages/home/views/cart/cart_page.dart';
import 'package:motion_shop/pages/home/views/home/home_page.dart';
import 'package:motion_shop/pages/home/views/invoice_success/invoice_success_page.dart';
import 'package:motion_shop/pages/home/views/product/product_page.dart';

import '../../pages/home/bindings/home_binding.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT,
      page: () => const ProductPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INVOICE,
      page: () => const InvoiceSuccessPage(),
      binding: HomeBinding(),
    ),
  ];
}
