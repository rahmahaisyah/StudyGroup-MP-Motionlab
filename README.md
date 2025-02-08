# Service API untuk Produk

## Deskripsi
Proyek ini adalah implementasi API Service untuk mendapatkan data produk berdasarkan kategori, mengambil daftar kategori, serta mendapatkan detail produk berdasarkan ID. Data produk diambil dari API [DummyJSON](https://dummyjson.com/docs/products).

## Fitur
1. **Get All Products By Category**  
   Mengambil semua produk berdasarkan kategori yang dipilih.
2. **Get Category List**  
   Mengambil daftar kategori produk.
3. **Get Single Product**  
   Mengambil detail produk berdasarkan ID produk tertentu.

## Teknologi yang Digunakan
- **Dart**: Bahasa pemrograman utama
- **Dio Package**: Untuk melakukan HTTP request
- **JSON**: Format data yang digunakan

## Cara Kerja API
### Struktur Arsitektur API dalam Flutter
```
REMOTE → SERVICE → CONTROLLER → UI
```
1. **REMOTE**: Berkomunikasi langsung dengan API
2. **SERVICE**: Mengolah data yang diperoleh dari remote
3. **CONTROLLER**: Menangani logika bisnis aplikasi
4. **UI**: Menampilkan data kepada pengguna

### Implementasi API Service
Kode berikut menangani pengambilan data dari API DummyJSON:

```dart
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

  // Get list of categories
  Future<List<String>?> getCategories() async {
    try {
      final response = await dio.get('$url/products/categories');
      if (response.statusCode == 200) {
        final data = response.data;
        if (data is List) {
          return data.map((e) => e.toString()).toList();
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
```

## Konsep Future dalam Dart
Future adalah objek dalam Dart yang merepresentasikan operasi asinkron, yaitu tugas yang hasilnya mungkin tersedia di masa depan. Future digunakan dalam berbagai operasi, seperti:
- Mengambil data dari internet
- Mengakses penyimpanan perangkat
- Membaca file dari galeri

### Karakteristik Future:
✅ Menangani operasi yang membutuhkan waktu  
✅ Berjalan secara asinkron (tidak blocking)  
✅ Ideal untuk operasi I/O seperti mengambil data dari API  

## Best Practices dalam Implementasi API
1. **Error Handling**  
   - Gunakan `try-catch` untuk menangani error
   - Tampilkan pesan kesalahan yang informatif kepada pengguna
2. **Loading State**  
   - Gunakan `FutureBuilder` atau GetX untuk menampilkan indikator loading saat mengambil data
3. **Data Caching**  
   - Pertimbangkan menyimpan data sementara agar lebih efisien

## Tools yang Digunakan dalam Development
- **Postman**: Untuk mengetes API endpoint
- **JSONCrack**: Untuk memvisualisasikan struktur JSON
- **QuickType**: Untuk mengonversi JSON ke model Dart
