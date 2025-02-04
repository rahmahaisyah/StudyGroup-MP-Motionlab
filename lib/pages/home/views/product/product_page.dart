import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_shop/app/data/dummy_product.dart';
import 'package:motion_shop/pages/home/controllers/cart_controller.dart';
import 'package:motion_shop/pages/model/product_model.dart';
import 'package:motion_shop/util/button_app.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductModel product = dummyProduct[Get.arguments];
    final cartController = Get.find<CartController>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        centerTitle: true,
        actions: [
          Obx(
            () => Padding(
              padding: const EdgeInsets.only(right: 23),
              child: GestureDetector(
                onTap: () {
                  product.isFavorite.value = !product.isFavorite.value;
                },
                child: Icon(
                  Icons.favorite,
                  color: product.isFavorite.value ? Colors.red : Colors.grey,
                  size: 23,
                ),
              ),
            ),
          )
        ],
        leading: IconButton(
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left_rounded,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Product",
          style: GoogleFonts.inter(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      width: double.infinity,
                      height: 401,
                      product.image ?? "",
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      product.name ?? "Not Found",
                      style: GoogleFonts.roboto(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$${product.price}",
                      style: const TextStyle(
                          fontSize: 20, color: Color(0xFF00623B)),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.",
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        color: const Color(0xff6D6D6D),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: GestureDetector(
              onTap: () {
                if (cartController.checkProduct(product)) {
                  product.qty++;
                } else {
                  cartController.addProduct(product);
                  product.qty++;
                }

                Get.offNamed("/cart");
              },
              child: const ButtonApp(
                text: "add to bag",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
