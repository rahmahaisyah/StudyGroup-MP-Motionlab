import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
    );
  }
}
