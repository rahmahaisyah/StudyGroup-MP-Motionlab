import 'package:flutter/material.dart';

class Slicing extends StatelessWidget {
  const Slicing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
          Center(
              child: SizedBox(
            child:
                Image.asset(
                  'assets/images/11.png',
            )
          ),
          
          ),
          ],
      ),
      ),
    );
  }
}
