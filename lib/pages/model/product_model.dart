import 'package:get/get.dart';

class ProductModel extends GetxController {
  int? id;
  String? name;
  String? desc;
  double? price;
  String? image;
  String? category;
  var isFavorite = false.obs;
  var qty = 0.obs;

  ProductModel(
      {this.id, this.name, this.desc, this.price, this.image, this.category});
}
