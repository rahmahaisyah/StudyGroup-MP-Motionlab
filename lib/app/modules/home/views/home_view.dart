import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_shop/app/modules/home/controllers/home_controller.dart';
import 'package:motion_shop/app/widgets/appbar.dart';
import 'package:motion_shop/app/widgets/bottom_navigation_bar.dart';
import 'package:motion_shop/app/widgets/product_card.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFFFE),
      body: Column(
        children: [
          // AppBar
          const CustomAppBar(),

          // Body
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Obx(() {
                // ============================================================
                // 1) Jika isLoading == true => seluruh body menampilkan loading
                // ============================================================
                if (controller.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                }

                // Jika belum ada kategori
                if (controller.chipLabels.isEmpty) {
                  return const Center(child: Text('No Categories'));
                }

                // List produk (dari API)
                final products = controller.productsFromApi;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      'Our way of loving\nyou back',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                        fontFamily: 'Inter',
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: const TextStyle(
                          fontFamily: 'Inter',
                          color: Color(0x93161B28),
                        ),
                        prefixIcon: const Icon(Icons.search),
                        filled: true,
                        fillColor: const Color(0xFFF1F1F1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // =========================
                    //  Chips Kategori
                    // =========================
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          controller.chipLabels.length,
                          (index) {
                            final isSelected =
                                controller.selectedIndex.value == index;
                            final category = controller.chipLabels[index];

                            // opsional: buat label tampak capitalized
                            final displayLabel = category == 'All'
                                ? 'All'
                                : category[0].toUpperCase() +
                                    category.substring(1).toLowerCase();

                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: FilterChip(
                                showCheckmark: false,
                                label: Text(
                                  displayLabel,
                                  style: TextStyle(
                                    fontFamily:
                                        isSelected ? 'Raleway' : 'Inter',
                                    fontWeight: isSelected
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                selected: isSelected,
                                onSelected: (_) =>
                                    controller.setSelectedIndex(index),
                                backgroundColor: isSelected
                                    ? const Color(0XFF00623B)
                                    : const Color(0XFFF2F2F2),
                                selectedColor: const Color(0XFF00623B),
                                side: BorderSide(
                                  color: isSelected
                                      ? const Color(0XFF00623B)
                                      : const Color(0XFFF2F2F2),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    const Text(
                      'Our Best Seller',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),

                    // =========================
                    //  Grid Produk
                    // =========================
                    Expanded(
                      // Observasi isGridLoading
                      child: Obx(() {
                        if (controller.isGridLoading.value) {
                          // Tampilkan loading HANYA di area grid
                          return const Center(
                              child: CircularProgressIndicator());
                        } else {
                          // Tampilkan grid product
                          return GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.7,
                            children: products.map((product) {
                              return ProductCard(
                                productId: product.id ?? 0,
                                title: product.title ?? "",
                                price: product.price ?? 0,
                                image: product.thumbnail ??
                                    (product.images?.isNotEmpty == true
                                        ? product.images!.first
                                        : ""),
                                description: product.description ?? "",
                                isFavorite: false,
                              );
                            }).toList(),
                          );
                        }
                      }),
                    ),
                  ],
                );
              }),
            ),
          ),

          // Bottom Navigation
          const CustomBottomNavigationBar(),
        ],
      ),
    );
  }
}
