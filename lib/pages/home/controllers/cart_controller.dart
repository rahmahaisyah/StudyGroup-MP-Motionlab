import 'package:get/get.dart';
import 'package:motion_shop/pages/model/product_model.dart';

class CartController extends GetxController {
  var cart = [].obs;
  void addProduct(ProductModel product) {
    cart.add(product);
  }

  bool checkProduct(ProductModel product) => cart.contains(product);
}
