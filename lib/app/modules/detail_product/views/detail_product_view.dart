import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_shop/app/ui_kit/colors.dart';
import '../controllers/detail_product_controller.dart';

class DetailProductView extends GetView<DetailProductController> {
  const DetailProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          final product = controller.productDetail.value;
          if (product == null) {
            return const Center(child: Text('No product detail'));
          }

          return Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () => Get.back(),
                    ),
                    Text(
                      product.title ?? "",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        controller.isFavorite.value
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: controller.isFavorite.value
                            ? Colors.red
                            : Colors.grey,
                      ),
                      onPressed: () => controller.toggleFavorite(product.id!),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
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
                      Text(
                        product.title ?? "",
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '\$${(product.price ?? 0).toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Color(0xff00623B),
                        ),
                      ),
                      const SizedBox(height: 10),
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
              GestureDetector(
                onTap: () => Get.toNamed('/cart'),
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  padding: const EdgeInsets.symmetric(vertical: 11),
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
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
