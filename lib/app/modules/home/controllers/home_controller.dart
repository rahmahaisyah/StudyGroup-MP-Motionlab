import 'package:get/get.dart';
import 'package:motion_shop/app/data/models/product_model_api.dart';
import 'package:motion_shop/service/product_service.dart';

class HomeController extends GetxController {
  final productService = ProductService();

  // Loading saat pertama kali buka page Home
  var isLoading = false.obs;

  // Loading khusus untuk saat ganti kategori (grid saja)
  var isGridLoading = false.obs;

  var productsFromApi = <ProductElement>[].obs;

  // Daftar kategori
  var chipLabels = <String>[].obs;
  var selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    // Saat pertama kali buka page, kita set isLoading = true
    fetchCategories();
    fetchAllProducts();
  }

  // Ambil list kategori dari API
  Future<void> fetchCategories() async {
    try {
      isLoading.value = true; // Loading penuh
      final listCat = await productService.getCategories();
      if (listCat != null) {
        chipLabels.clear();
        chipLabels.add('All');
        chipLabels.addAll(listCat);
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false; // selesai load kategori
    }
  }

  // Ambil semua produk (untuk All)
  // isInit = true jika panggilan pertama (akan pakai isLoading),
  // isInit = false jika panggilan karena user ganti kategori ke 'All' (pakai isGridLoading)
  Future<void> fetchAllProducts({bool isInit = true}) async {
    try {
      if (isInit) {
        // loading penuh, misal panggilan pertama
        isLoading.value = true;
      } else {
        // hanya grid yang loading
        isGridLoading.value = true;
      }
      final product = await productService.getProducts();
      if (product != null) {
        productsFromApi.value = product.products ?? [];
      }
    } catch (e) {
      print(e);
    } finally {
      if (isInit) {
        isLoading.value = false;
      } else {
        isGridLoading.value = false;
      }
    }
  }

  // Ambil produk berdasarkan kategori (bukan 'All')
  Future<void> fetchByCategory(String categoryName) async {
    try {
      // Saat ganti kategori, cukup grid yang loading
      isGridLoading.value = true;

      final product = await productService.getProductsByCategory(categoryName);
      if (product != null) {
        productsFromApi.value = product.products ?? [];
      }
    } catch (e) {
      print(e);
    } finally {
      isGridLoading.value = false;
    }
  }

  // Ganti kategori yang dipilih
  void setSelectedIndex(int index) {
    selectedIndex.value = index;
    final category = chipLabels[index];
    if (category == 'All') {
      // panggil fetchAllProducts dengan isInit = false
      // (berarti cuma grid yang loading)
      fetchAllProducts(isInit: false);
    } else {
      fetchByCategory(category);
    }
  }
}
