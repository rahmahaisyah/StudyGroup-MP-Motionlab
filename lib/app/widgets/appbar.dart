import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Image.asset(
              'assets/images/internal/menu.png',
              height: 15,
            ),
            onPressed: () {},
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/internal/officiallogo.png",
                height: 47,
              ),
            ],
          ),
          IconButton(
            icon: Image.asset(
              'assets/images/internal/baglogo.png',
              width: 23,
            ),
            onPressed: () {
              Get.toNamed('/cart');
            },
          ),
        ],
      ),
    );
  }
}
