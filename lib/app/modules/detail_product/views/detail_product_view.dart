import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_shop/app/ui_kit/colors.dart'; // Sesuaikan jika Anda punya file colors.dart
import '../controllers/detail_product_controller.dart';

class DetailProductView extends GetView<DetailProductController> {
  const DetailProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() {
          // Jika masih loading, tampilkan indikator
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          // Ambil data product dari controller
          final product = controller.productDetail.value;
          if (product == null) {
            return const Center(child: Text('No product detail'));
          }

          // Sementara, isFavorite kita hardcode dulu atau buat field di model
          final bool isFavorite = false;

          return Column(
            children: [
              // =====================
              //  Custom AppBar
              // =====================
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Tombol back
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () => Get.back(),
                    ),
                    // Title di AppBar
                    Text(
                      product.title ?? "",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                    ),
                    // Icon Favorite
                    Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : Colors.grey,
                    ),
                  ],
                ),
              ),

              // =====================
              //  Scrollable Content
              // =====================
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image
                      Image.network(
                        // Pakai thumbnail atau images[0] jika lebih cocok
                        product.thumbnail ??
                            (product.images?.isNotEmpty == true
                                ? product.images!.first
                                : ""),
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                        errorBuilder: (ctx, error, stack) => Container(
                          width: double.infinity,
                          height: 300,
                          color: Colors.grey,
                          alignment: Alignment.center,
                          child: const Text('No Image'),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Title
                      Text(
                        product.title ?? "",
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Price
                      Text(
                        '\$${(product.price ?? 0).toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Color(0xff00623B),
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Description
                      Text(
                        product.description ?? "",
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color(0XFF6D6D6D),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),

              // =====================
              // Tombol Add to Bag
              // =====================
              GestureDetector(
                onTap: () => Get.toNamed('/cart'),
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  padding: const EdgeInsets.symmetric(vertical: 11),
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor, // pastikan ini didefinisikan
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  width: double.infinity,
                  child: const Text(
                    "Add to bag",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
