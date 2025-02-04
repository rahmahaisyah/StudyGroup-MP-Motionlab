import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_shop/app/data/dummy_product.dart';
import 'package:motion_shop/pages/home/controllers/cart_controller.dart';
import 'package:motion_shop/pages/model/product_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CartController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.only(left: 23),
          child: Icon(Icons.menu),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.toNamed("/cart");
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 23),
              child: Icon(Icons.shopping_bag_outlined),
            ),
          )
        ],
        title: Image.asset(
          "assets/images/logo_app.png",
          width: 47,
          height: 47,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 23),
                            child: Text(
                              "Our way of loving\nyou back",
                              style: GoogleFonts.inter(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 23),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF2F2F2),
                                borderRadius: BorderRadius.circular(26.5),
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.search,
                                    color: Color(0xff868A91),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Search",
                                    style: GoogleFonts.inter(
                                        color: const Color(0xff161B28)
                                            .withOpacity(0.58)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 23),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    width: 92,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff00623B),
                                      borderRadius: BorderRadius.circular(24.5),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 3),
                                    child: Text(
                                      "All",
                                      style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Container(
                                    width: 92,
                                    margin: const EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF2F2F2),
                                      borderRadius: BorderRadius.circular(24.5),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 3),
                                    child: Text(
                                      "Watch",
                                      style: GoogleFonts.inter(
                                        color: const Color(0xff4D4D4D),
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    width: 92,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF2F2F2),
                                      borderRadius: BorderRadius.circular(24.5),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 3),
                                    child: Text(
                                      "Shirt",
                                      style: GoogleFonts.inter(
                                        color: const Color(0xff4D4D4D),
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    width: 92,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF2F2F2),
                                      borderRadius: BorderRadius.circular(24.5),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 3),
                                    child: Text(
                                      "Shoes",
                                      style: GoogleFonts.inter(
                                        color: const Color(0xff4D4D4D),
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 23),
                            child: Text(
                              "Our Best Seller",
                              style: GoogleFonts.inter(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 23, vertical: 30),
                            child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 15,
                                      mainAxisSpacing: 15,
                                      mainAxisExtent: 270),
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: dummyProduct.length,
                              itemBuilder: (context, index) {
                                return CardProduct(
                                  item: dummyProduct[index],
                                  indexProduct: index,
                                );
                              },
                              // Jumlah item di grid
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 74,
            decoration: const BoxDecoration(
              color: Color(0xff00623B),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30.29,
                ),
                Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Colors.white,
                  size: 30.29,
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 30.29,
                ),
                Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.white,
                  size: 30.29,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardProduct extends StatelessWidget {
  final ProductModel item;
  final int indexProduct;

  const CardProduct({
    required this.item,
    required this.indexProduct,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/product', arguments: indexProduct);
      },
      child: Obx(
        () => Container(
            // width: 177,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(9.72),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(1, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 190,
                  child: Image.asset(
                    item.image ?? "",
                    width: double.infinity,
                    height: 187,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name ?? "Product Not Found",
                        style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontSize: 13.88,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$${item.price.toString()}",
                            style: GoogleFonts.poppins(
                              color: const Color(0xff00623B),
                              fontSize: 17.35,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              item.isFavorite.value = !item.isFavorite.value;
                            },
                            child: Icon(
                              Icons.favorite,
                              color: item.isFavorite.value
                                  ? Colors.red
                                  : Colors.grey,
                              size: 23,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
