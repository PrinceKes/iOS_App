import 'dart:async'; // Import for Timer
import 'package:flutter/material.dart';

class LoadPage extends StatefulWidget {
  const LoadPage({super.key});

  @override
  _LoadPageState createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  @override
  void initState() {
    super.initState();
    // Navigate to LoginScreen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background Image with dark opacity overlay
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.jpg'), // Ensure this path is correct
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.6), // Dark overlay with 60% opacity
          ),
          // Centered logo and loading text
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Image.asset(
                  'assets/logo.png', // Ensure this path is correct
                  width: 250, // Adjust logo size as needed
                ),
                // Loading text
                const SizedBox(height: 20), // Space between logo and text
                const Text(
                  'Loading...',
                  style: TextStyle(
                    fontSize: 24, // Size of the loading text
                    color: Colors.white, // Color of the loading text
                    fontWeight: FontWeight.bold, // Make the text bold
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
