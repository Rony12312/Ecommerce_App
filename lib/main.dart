import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
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
          child: Container(
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
                    decoration: BoxDecoration(
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
                    decoration: BoxDecoration(
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
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 20), // Space between elements
                      // Image
                      Image.asset(
                        "images/image.jpg",
                        height: 200, // Adjust image height as needed
                      ),
                      SizedBox(height: 30), // Space between elements
                      // Username TextField
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            hintText: "Username",
                            fillColor: Color(0xffe3e0f1),
                            // Add this line
                            filled: true,
                            prefixIcon: Icon(
                              Icons.email_rounded,
                              color: Color(0xff6a63b7),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20), // Space between elements
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
                            fillColor: Color(0xffe3e0f1),
                            // Add this line
                            filled: true,
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xff6a63b7),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20), // Space between elements
                      // Material Button with the same width as TextFields
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: MaterialButton(
                          onPressed: () {
                            // Add your button's onPressed functionality here
                            print("Login button pressed!");
                          },
                          color: Color(0xff6a63b7),
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 15.0, // Adjust vertical padding as needed
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 18),
                          ),
                          minWidth: double.infinity,
                          // Make the button full width
                          height: 55, // Adjust height to match TextField
                        ),
                      ),
                    ],
                  ),
                ),
                // Rounded Rectangle at the Bottom
                Positioned(
                  bottom: 0, // Position at the bottom of the screen
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 70, // Adjust height as needed
                    decoration: BoxDecoration(
                      color: Color(0xffe3e0f1), // Background color
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        // Rounded top-left corner
                        topRight:
                            Radius.circular(100), // Rounded top-right corner
                      ),
                    ),
                    child: Center(
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