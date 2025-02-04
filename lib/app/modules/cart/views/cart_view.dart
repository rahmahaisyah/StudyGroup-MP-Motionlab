import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_shop/app/widgets/cart_card.dart';
import 'package:motion_shop/app/widgets/custom_appbar_2.dart';
import 'package:motion_shop/app/data/static_data.dart';
import 'package:motion_shop/app/ui_kit/colors.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar2(title: 'My Cart'),
          Expanded(
            child: Container(
              color: AppColor.whiteColor,
              child: ListView.builder(
                itemCount: StaticData.products.length,
                itemBuilder: (context, index) {
                  final product = StaticData.products[index];
                  return CartCard(
                    title: product['title'],
                    price: product['price'],
                    image: product['image'],
                    index: index,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          final totalPrice = controller.calculateTotalPrice();
          Get.toNamed(
            '/invoice',
            arguments: {
              'username': StaticData.userlogin['nama'],
              'email': StaticData.userlogin['email'],
              'totalPrice': totalPrice.toStringAsFixed(2),
            },
          );
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          padding: const EdgeInsets.symmetric(vertical: 11),
          decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          width: double.infinity,
          child: Text(
            "Buy Now",
            style: GoogleFonts.roboto(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
