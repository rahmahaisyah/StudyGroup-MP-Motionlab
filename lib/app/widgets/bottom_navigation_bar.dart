import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_shop/app/routes/app_pages.dart';


class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Get.toNamed(Routes.HOME);
        break;
      case 1:
        Get.toNamed(Routes.FAVORITE);
        break;
      case 2:
        Get.toNamed(Routes.PROFILE);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF00623B),
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => _onItemTapped(0),
            icon: Icon(
              _selectedIndex == 0 ? Icons.home : Icons.home_outlined,
              color:
                  _selectedIndex == 0 ? Colors.white : const Color(0XFFB4DCCC),
            ),
          ),
          IconButton(
            onPressed: () => _onItemTapped(1),
            icon: Icon(
              _selectedIndex == 1 ? Icons.favorite : Icons.favorite_border,
              color:
                  _selectedIndex == 1 ? Colors.white : const Color(0XFFB4DCCC),
            ),
          ),
          IconButton(
            onPressed: () => _onItemTapped(2),
            icon: Icon(
              _selectedIndex == 2 ? Icons.person : Icons.person_outline,
              color:
                  _selectedIndex == 2 ? Colors.white : const Color(0XFFB4DCCC),
            ),
          ),
        ],
      ),
    );
  }
}
