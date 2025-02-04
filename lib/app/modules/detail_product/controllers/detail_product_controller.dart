import 'package:get/get.dart';
import 'package:motion_shop/app/data/models/product_model_api.dart';
import 'package:motion_shop/service/favorite_service.dart';
import 'package:motion_shop/service/product_service.dart';

class DetailProductController extends GetxController {
  final productService = ProductService();
  final favoriteService = FavoriteService();

  var isLoading = false.obs;
  var productDetail = Rxn<ProductElement>();
  var isFavorite = false.obs;

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    if (args != null && args['id'] != null) {
      final int productId = args['id'];
      fetchDetail(productId);
      checkFavorite(productId);
    }
  }

  Future<void> fetchDetail(int id) async {
    try {
      isLoading.value = true;
      final detail = await productService.getDetailsProducts(id: id);
      if (detail != null) {
        productDetail.value = detail;
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> checkFavorite(int productId) async {
    final favorites = await favoriteService.getFavorites();
    isFavorite.value = favorites.contains(productId);
  }

  Future<void> toggleFavorite(int productId) async {
    if (isFavorite.value) {
      await favoriteService.removeFavorite(productId);
    } else {
      await favoriteService.addFavorite(productId);
    }
    isFavorite.value = !isFavorite.value;
  }
}
