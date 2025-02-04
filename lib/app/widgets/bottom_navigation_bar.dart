import 'package:flutter/material.dart';

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
              _selectedIndex == 2
                  ? Icons.notifications
                  : Icons.notifications_outlined,
              color:
                  _selectedIndex == 2 ? Colors.white : const Color(0XFFB4DCCC),
            ),
          ),
        ],
      ),
    );
  }
}
