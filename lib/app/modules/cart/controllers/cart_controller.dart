import 'package:get/get.dart';
import 'package:motion_shop/app/data/static_data.dart';

class CartController extends GetxController {
  var quantities = <int>[].obs;

  @override
  void onInit() {
    super.onInit();
    quantities.value =
        List<int>.generate(StaticData.products.length, (index) => 1);
  }

  void increaseQuantity(int index) {
    if (index < quantities.length) {
      quantities[index]++;
    }
  }

  void decreaseQuantity(int index) {
    if (index < quantities.length && quantities[index] > 1) {
      quantities[index]--;
    }
  }

  double calculateTotalPrice() {
    double total = 0.0;
    for (int i = 0; i < quantities.length; i++) {
      double price = StaticData.products[i]['price'];
      total += price * quantities[i];
    }
    return total;
  }
}
