import 'package:flutter/material.dart';

class Rectangle extends StatelessWidget {
  final String labelText;
  final IconData icon;

  const Rectangle({
    super.key,
    required this.labelText,
    required this.icon,
    required TextStyle textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffFCFFFE),
      ),
      padding: const EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          border: InputBorder.none,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
