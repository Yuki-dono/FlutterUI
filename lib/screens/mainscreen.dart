import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(244, 67, 54, 1),
      body: Center(
        child: SizedBox(
          height: 500,
          width: 500,
          child: Card(
            child: Center(
              child: Text('Your content here'),
            ),
          ),
        ),
      ),
    );
  }
}
