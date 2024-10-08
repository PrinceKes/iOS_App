import 'package:flutter/material.dart';

class CategoryPracticeScreen extends StatelessWidget {
  const CategoryPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.jpg'), // Path to your background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Dark overlay
          Container(
            color: Colors.black.withOpacity(0.5), // Dark overlay with opacity
          ),
          // Main content
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10), // Space between AppBar and text

              // AppBar
              AppBar(
                backgroundColor: Colors.transparent, // Make AppBar transparent
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context); // Navigate back on button press
                  },
                ),
                centerTitle: true,
                title: const Text(
                  'Categories to practise',
                  style: TextStyle(
                    color: Colors.white, // Set the title color to white
                    fontSize: 18,
                  ),
                ),
              ),

              // Text for "0 of 773 selected"
              const Text(
                '0 of 773 selected',
                style: TextStyle(
                  color: Colors.white, // White text color
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 20), // Space between text and cards

              // Container for two cards
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // First card with the checkmark
                    Stack(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const Positioned(
                          top: 8,
                          left: 8,
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Second card without checkmark
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(), // Push the bottom navigation to the bottom

              // Bottom navigation bar with two gear icons
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.settings,
                      size: 40,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.settings,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
