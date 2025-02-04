import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_shop/controller/cart_controller.dart';

class CartPage extends StatelessWidget {
  final cartController = Get.put(CartController());

  final List<Map<String, dynamic>> products = [
    {
      "id": 1,
      "name": "Mi Band 8 Pro - Brand New",
      "price": 54.00,
      "image": "assets/images/band.png"
    },
    {
      "id": 2,
      "name": "Lycra Men's shirt",
      "price": 12.00,
      "image": "assets/images/t-shirt.png"
    },
  ];

  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          iconSize: 30,
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.chevron_left_rounded, color: Colors.black),
        ),
        title: Text(
          "My Cart",
          style: GoogleFonts.inter(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Obx(() => CartProduct(
                        productId: product["id"],
                        productName: product["name"],
                        productPrice: product["price"],
                        imageAsset: product["image"],
                        qty: cartController.getQuantity(product["id"]),
                        increment: () =>
                            cartController.addProduct(product["id"]),
                        decrement: () =>
                            cartController.removeProduct(product["id"]),
                      ));
                },
              ),
            ),
            Container(
              width: double.infinity, // Tambahkan ini
              padding: const EdgeInsets.all(10),
              child: ButtonApp(
                text: "Buy Now",
                onTap: () {
                  Navigator.pushNamed(context, '/invoice');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CartProduct extends StatelessWidget {
  final int productId;
  final String productName;
  final double productPrice;
  final String imageAsset;
  final int qty;
  final VoidCallback increment;
  final VoidCallback decrement;

  const CartProduct({
    super.key,
    required this.productId,
    required this.productName,
    required this.productPrice,
    required this.imageAsset,
    required this.qty,
    required this.increment,
    required this.decrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff00623B)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(imageAsset, width: 92, height: 96),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productName,
                      style: GoogleFonts.inter(fontWeight: FontWeight.w500)),
                  const SizedBox(height: 5),
                  Text("\$$productPrice",
                      style: GoogleFonts.inter(color: const Color(0xff00623B))),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff00623B)),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: decrement,
                  child: const Icon(Icons.remove,
                      size: 20, color: Color(0xff00623B)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text('$qty', style: GoogleFonts.inter(fontSize: 16)),
                ),
                GestureDetector(
                  onTap: increment,
                  child:
                      const Icon(Icons.add, size: 20, color: Color(0xff00623B)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ButtonApp extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const ButtonApp({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff00623B),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      ),
      child: Text(
        text,
        style: GoogleFonts.inter(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
