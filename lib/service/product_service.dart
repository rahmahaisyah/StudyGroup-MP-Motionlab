import 'package:motion_shop/app/data/models/product_model_api.dart';
import 'package:motion_shop/app/shared/constanta.dart';

class ProductService {
  // Get all products
  Future<Product?> getProducts() async {
    try {
      final response = await dio.get('$url/products');
      if (response.statusCode == 200) {
        return Product.fromJson(response.data);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }

  // Get single product by ID
  Future<ProductElement?> getDetailsProducts({required int id}) async {
    try {
      final response = await dio.get('$url/products/$id');
      if (response.statusCode == 200) {
        return ProductElement.fromJson(response.data);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }

  // Get list of categories (bisa list of string atau object, tergantung endpoint)
  Future<List<String>?> getCategories() async {
    try {
      final response = await dio.get('$url/products/categories');
      if (response.statusCode == 200) {
        final data = response.data;

        // Contoh: jika data = ["smartphones","laptops","fragrances"] (array string)
        // atau data = [{"slug":"beauty","name":"Beauty","url":"..."}, ...] (array object)
        if (data is List) {
          // kalau list tidak kosong
          if (data.isNotEmpty && data.first is Map) {
            // berarti array of objects
            // Ambil field "slug" agar dipakai fetchByCategory("beauty")
            final listCat = data.map((obj) {
              final map = obj as Map<String, dynamic>;
              return map["slug"].toString(); // misalnya "beauty"
            }).toList();
            return listCat.cast<String>();
          } else {
            // berarti array of strings
            final listCat = data.map((e) => e.toString()).toList();
            return listCat.cast<String>();
          }
        }
        return null;
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }

  // Get products by category
  Future<Product?> getProductsByCategory(String categoryName) async {
    try {
      final response = await dio.get('$url/products/category/$categoryName');
      if (response.statusCode == 200) {
        return Product.fromJson(response.data);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }
}
