import 'package:flutter/material.dart';

class Rectangle extends StatelessWidget {
  final String? labelText;
  final IconData? icon;
  final TextStyle? textStyle;
  final Color? bgColor;
  final Border? border;

  const Rectangle({
    super.key,
    this.labelText,
    this.icon,
    this.textStyle,
    this.bgColor,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 360,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: border ?? Border.all(color: Colors.black, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          style: textStyle,
          decoration: InputDecoration(
            labelText: labelText,
            labelStyle: textStyle,
            border: InputBorder.none,
            prefixIcon: Icon(icon),
          ),
        ),
      ),
    );
  }
}

class RectangleButton extends StatelessWidget {
  final String labelText;
  final TextStyle? textStyle;
  final Color bgColor;
  final VoidCallback? onTap;

  const RectangleButton({
    super.key,
    required this.labelText,
    this.textStyle,
    this.bgColor = const Color(0xff00623B),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, 
      child: Container(
        height: 48,
        width: 360,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Align(
          alignment: Alignment.center, 
          child: Text(
            labelText,
            style: textStyle,
            textAlign: TextAlign
                .center,
          ),
        ),
      ),
    );
  }
}
