import 'package:flutter/material.dart';

class DownloadProcessScreen extends StatelessWidget {
  const DownloadProcessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image or Color
          Positioned.fill(
            child: Image.asset(
              'assets/bg.jpg', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          // Main content container
          Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),
                  // Download icon
                  const Icon(
                    Icons.cloud_download,
                    size: 60,
                    color: Colors.green,
                  ),
                  const SizedBox(height: 20),
                  // Title
                  const Text(
                    'Downloading Highway Code',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Description Text
                  const Text(
                    "Tap 'Continue' to download the Highway Code information\n\n"
                    "The download is approximately 11 mb.\n\n"
                    "You need an internet connection to proceed",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Continue and Cancel buttons
                  Column(
                    children: [
                      // Continue button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // Add your continue logic here
                            Navigator.pushReplacementNamed(context, '/loading');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black, // Button color
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      // Cancel button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context); // Close screen
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red, // Button color
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Cancel',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
