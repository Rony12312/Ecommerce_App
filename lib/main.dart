import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<FormState> formstate = GlobalKey();
  String? username;
  String? phone;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context)
                .size
                .height, // Ensures full screen height
            child: Stack(
              children: [
                // Background Circles
                Positioned(
                  top: -50,
                  left: -50,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Color(0xff6a63b7),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  right: -50,
                  bottom: 550,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Color(0xff6a63b7),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                // Centered Column for Main Content
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    // Minimize column height to content size
                    children: [
                      // Welcome Text
                      const Text(
                        "Welcome Back",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 20), // Space between elements
                      // Image
                      Image.asset(
                        "images/image.jpg",
                        height: 200, // Adjust image height as needed
                      ),
                      const SizedBox(height: 30), // Space between elements
                      // Username TextField
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            hintText: "Username",
                            hintFadeDuration: Durations.long1,
                            fillColor: const Color(0xffe3e0f1),
                            // Add this line
                            filled: true,
                            prefixIcon: const Icon(
                              Icons.email_rounded,
                              color: Color(0xff6a63b7),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20), // Space between elements
                      // Password TextField
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            hintText: "Password",
                            hintFadeDuration: Durations.long1,
                            fillColor: const Color(0xffe3e0f1),
                            // Add this line
                            filled: true,
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Color(0xff6a63b7),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: MaterialButton(
                          onPressed: () {
                            print("Login button pressed!");
                          },
                          color: const Color(0xff6a63b7),
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                          ),
                          child: const Text(
                            "Login",
                            style: TextStyle(fontSize: 18),
                          ),
                          minWidth: double.infinity,
                          height: 55,
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  bottom: 0, // Position at the bottom of the screen
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 70,
                    decoration: const BoxDecoration(
                      color: Color(0xffe3e0f1), // Background color
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        // Rounded top-left corner
                        topRight: Radius.circular(100),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Don't have an account? Sign up",
                        // Text inside the rectangle
                        style: TextStyle(
                          color: Color(0xff6a63b7),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
