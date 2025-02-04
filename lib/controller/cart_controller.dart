import 'package:get/get.dart';

class CartController extends GetxController {
  var quantities = <int, int>{}.obs;

  void addProduct(int productId) {
    quantities[productId] = (quantities[productId] ?? 0) + 1;
  }

  void removeProduct(int productId) {
    if (quantities[productId] != null && quantities[productId]! > 0) {
      quantities[productId] = quantities[productId]! - 1;
    }
  }

  int getQuantity(int productId) {
    return quantities[productId] ?? 0;
  }
}
