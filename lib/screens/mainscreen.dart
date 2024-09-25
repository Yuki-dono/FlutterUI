import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Image.asset(
          'assets/iconWBackground.jpg', // Replace with your image path
          width: 200, // You can specify width and height if needed
          height: 200, // Optional: Set height, or remove for natural size
        ),
      ),
    );
  }
}
