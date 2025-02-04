import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_shop/pages/home/controllers/cart_controller.dart';
import 'package:motion_shop/pages/model/product_model.dart';
import 'package:motion_shop/util/button_app.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());

    return Obx(
      () => cartController.cart.isEmpty
          ? Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                surfaceTintColor: Colors.white,
                centerTitle: true,
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
                  "My Cart ",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              body: SafeArea(
                  child: Center(
                child: Text(
                  "Your cart is empty!",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )),
            )
          : Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                surfaceTintColor: Colors.white,
                centerTitle: true,
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
                  "My Cart",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              body: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: cartController.cart.length,
                            itemBuilder: (context, index) => CardCartProduct(
                              cartController: cartController,
                              product: cartController.cart[index],
                            ),
                            // mainAxisSize: MainAxisSize.min,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: ButtonApp(
                        text: "Buy Now",
                        onTap: () {
                          Get.toNamed("/invoice");
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

class CardCartProduct extends StatelessWidget {
  final ProductModel product;
  const CardCartProduct({
    required this.product,
    super.key,
    required this.cartController,
  });

  final CartController cartController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.image ?? "",
              width: 92,
              height: 96,
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maxLines: 2,
                    product.name ?? "Cannot load name",
                    style: GoogleFonts.inter(
                      // fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$${product.price ?? "Cannot load price"}",
                    style: GoogleFonts.inter(
                      color: const Color(0xff00623B),
                      // fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            // const Spacer(),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              alignment: Alignment.center,
              width: 70,
              padding: const EdgeInsets.symmetric(vertical: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xff00623B),
                ),
              ),
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      product.qty--;
                      if (product.qty == 0) {
                        cartController.cart.remove(product);
                      }
                    },
                    child: Text(
                      '-',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        color: const Color(0xff00623B),
                      ),
                    ),
                  ),
                  Text("${product.qty}",
                      style: GoogleFonts.inter(fontSize: 14)),
                  GestureDetector(
                    onTap: () {
                      product.qty++;
                    },
                    child: Text(
                      '+',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        color: const Color(0xff00623B),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
