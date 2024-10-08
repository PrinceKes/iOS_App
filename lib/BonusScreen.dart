import 'package:flutter/material.dart';

class BonusScreen extends StatelessWidget {
  const BonusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.png'), // Ensure this path is correct
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content
          Column(
            children: [
              // Header
              Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.black.withOpacity(0.7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/Logo.png', height: 40), // Ensure this path is correct
                    const SizedBox(width: 8),
                    const Text(
                      'DRIVING TEST',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.adjust, color: Colors.red), // Example icon
                  ],
                ),
              ),
              // Title Bar
              Container(
                width: double.infinity,
                color: Colors.red,
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'YOUR BONUS CONTENT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Main Content Area
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Bonus Content Goes Here',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}