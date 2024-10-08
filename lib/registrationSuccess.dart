import 'package:flutter/material.dart';

class RegistrationSuccessScreen extends StatelessWidget {
  const RegistrationSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.jpg'),
                fit: BoxFit.cover, // Ensures the image covers the entire background
              ),
            ),
          ),
          // Foreground content (white box)
          Center(
            child: Container(
              width: 300, // Adjust the width based on your design
              height: 400, // Adjust the height based on your design
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // Shadow position
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Success Icon
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 50,
                    ),
                  ),

                  const SizedBox(height: 16), // Spacing

                  // Information Text
                  const Text(
                    "Information",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 16), // Spacing

                  // Registered Successfully Message
                  const Text(
                    "Registered Successfully",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),

                  const Spacer(), // Push button to the bottom

                  // Continue Button
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to Home Screen or any other screen
                          Navigator.pushReplacementNamed(context, '/Appinfo');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white, // Use backgroundColor instead of primary
                          side: const BorderSide(color: Colors.red, width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          "Continue",
                          style: TextStyle(color: Colors.red, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
