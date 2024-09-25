import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
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
              color: const Color.fromARGB(255, 206, 206, 206).withOpacity(0.9),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0), // Horizontal margin
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 60,
                      width: 60,
                      child: Image(
                        image: AssetImage('assets/redheart.png'),
                      ),
                    ),
                    const SizedBox(
                        height: 20), // Adds space before the text fields
                    // Username TextField with red label
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'USERNAME',
                        labelStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold), // Label color to red
                        border: InputBorder.none, // Removes the default box
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .red), // Underline color when not focused
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color:
                                  Colors.red), // Underline color when focused
                        ),
                      ),
                    ),
                    const SizedBox(height: 25), // Space between fields
                    // Password TextField with red label
                    const TextField(
                      obscureText: true, // Hides the password input
                      decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold), // Label color to red
                        border: InputBorder.none, // Removes the default box
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .red), // Underline color when not focused
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color:
                                  Colors.red), // Underline color when focused
                        ),
                      ),
                    ),
                    const SizedBox(
                        height: 20), // Space before "Forgot Password?" text
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          // Handle forgot password action
                          print("Forgot Password tapped!");
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Colors.white, // Text color
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40), // Space before the button
                    SizedBox(
                      height: 50,
                      width: 340,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, '/mainscreen'); // Navigate to login
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
                    const SizedBox(height: 40), // Space before the divider
                    // Divider with text
                    const Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey, // Divider color
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'OR CONNECT WITH:',
                            style: TextStyle(
                              color: Colors.grey, // Text color
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey, // Divider color
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),

                    Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 50,
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    Navigator.pushNamed(context,
                                        '/mainscreen'); // Navigate to login
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 0, 55, 255),
                                  ),
                                  icon: const FaIcon(
                                    FontAwesomeIcons.facebook, // Facebook icon
                                    color: Colors.white,
                                  ),
                                  label: const Text(
                                    'FACEBOOK',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  width: 10), // Spacing between buttons
                              SizedBox(
                                height: 50,
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    Navigator.pushNamed(context,
                                        '/mainscreen'); // Navigate to login
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 255, 0, 0),
                                  ),
                                  icon: const FaIcon(
                                    FontAwesomeIcons.google, // Google icon
                                    color: Colors.white,
                                  ),
                                  label: const Text(
                                    'GOOGLE',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
