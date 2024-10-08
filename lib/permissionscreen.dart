import 'package:flutter/material.dart';

class PermissionScreen extends StatelessWidget {
  const PermissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // Background Image
            Image.asset(
              'assets/bg.jpg', // Replace with your background image file path
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            // Dark Overlay
            Container(
              color: Colors.black.withOpacity(0.5), // Adjust the opacity as needed
            ),
            // Content
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Top Icons (Green check and Red close)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/green_check.png', // Replace with your green check PNG file path
                          height: 40,
                          width: 40,
                        ),
                        Image.asset(
                          'assets/red_close.png', // Replace with your red close PNG file path
                          height: 40,
                          width: 40,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),

                    // Permissions Text
                    const Text(
                      'Permissions',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Change text color to white for better visibility
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Description Text
                    const Text(
                      'Any app permission\nwill appear here',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white54, // Change text color to white for better visibility
                      ),
                    ),
                    const SizedBox(height: 40),

                    // Continue Button
                    ElevatedButton(
                      onPressed: () {
                        // Add your logic for the "Continue" button
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black, // Background color
                        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                      ),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Don't show again Button
                    OutlinedButton(
                      onPressed: () {
                        // Add your logic for the "Don't show again" button
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 85, vertical: 15),
                        side: const BorderSide(color: Colors.red, width: 2),
                      ),
                      child: const Text(
                        "Don't show again",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
