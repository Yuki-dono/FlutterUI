import 'package:flutter/material.dart';
import 'package:heartlink/screens/mainscreen.dart';
import 'package:heartlink/screens/signup.dart';
import 'package:heartlink/screens/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(), // Set the home screen
      routes: {
        '/login': (context) => const Login(),
        '/signup': (context) => const Signup(),
        '/mainscreen': (context) => const Mainscreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/tree.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.red.withOpacity(0.85),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 300,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: 50,
                        child: Image.asset(
                          'assets/whiteheart.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                      const Positioned(
                        bottom: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'heart',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              'link',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(height: 200),
                    SizedBox(
                      height: 50,
                      width: 340,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 235, 85, 74),
                          side: const BorderSide(color: Colors.white, width: 2),
                        ),
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      width: 340,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, '/login'); // Navigate to login
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Color.fromARGB(255, 235, 85, 74),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
