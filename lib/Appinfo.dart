import 'package:flutter/material.dart';

void main() {
  runApp(const AppInfoScreen());
}

class AppInfoScreen extends StatelessWidget {
  const AppInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // The background image behind the card
        body: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'assets/bg.jpg', // Replace with your background image file
                fit: BoxFit.cover,
              ),
            ),
            
            // Card in the center
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
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

                      // "What's New" Text
                      const Text(
                        "What's New",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Description Text
                      const Text(
                        'New app Information\nwill appear here',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 40),

                      // Continue Button
                      ElevatedButton(
                        onPressed: () {
                          // Add your logic for the "Continue" button
                          Navigator.pushReplacementNamed(context, '/permissions');
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
                          Navigator.pushReplacementNamed(context, '/permissions');
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
            ),
          ],
        ),
      ),
    );
  }
}
