import 'dart:async'; // Import to use Timer
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // Simulate a download progress
  double downloadProgress = 0.0;
  bool isComplete = false; // Track if loading is complete

  @override
  void initState() {
    super.initState();
    // Start the progress animation as soon as the screen loads
    _startLoading();
  }

  void _startLoading() {
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {
        downloadProgress += 0.02; // Increment progress by 2% every 100ms
        if (downloadProgress >= 1) {
          downloadProgress = 1;
          isComplete = true; // Mark as complete
          timer.cancel(); // Stop the timer when it reaches 100%
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image with opacity
          Opacity(
            opacity: 0.7, // Adjust the opacity value as needed
            child: Image.asset(
              'assets/bg.jpg', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Top section with download icon and close icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.cloud_download, color: Colors.green, size: 40), // Replace with your own icon
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.red),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Title text
                  const Text(
                    'Downloading Highway Code',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Description text
                  const Text(
                    "Downloading Contents. Pls wait.....",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 30),
                  // Progress bar
                  Stack(
                    children: [
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          return Container(
                            height: 30,
                            width: constraints.maxWidth * downloadProgress,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          );
                        },
                      ),
                      Positioned.fill(
                        child: Center(
                          child: Text(
                            "${(downloadProgress * 100).toInt()}%",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  // Continue Button, only show when loading is complete
                  if (isComplete)
                    ElevatedButton(
                      onPressed: () {
                        // Action when the button is pressed (e.g., navigate to next screen)
                        Navigator.pushReplacementNamed(context, '/CategoryPractice');
                      },
                      child: const Text("Continue"),
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
