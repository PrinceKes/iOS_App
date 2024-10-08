import 'package:flutter/material.dart';

class TheoryTestScreen extends StatelessWidget {
  const TheoryTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          // Background image layer
          Positioned.fill(
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                'assets/bg.jpg', // Replace with your background image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Foreground content
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'SOJA',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'DRIVING TEST',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                'THEORY TEST',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomButton(
                        label: 'Practise All Questions',
                        icon: Icons.arrow_drop_down,
                        onPressed: () {},
                      ),
                      CustomButton(
                        label: 'Mock Test',
                        icon: Icons.check_circle,
                        onPressed: () {},
                      ),
                      CustomButton(
                        label: 'Mock Test',
                        onPressed: () {},
                      ),
                      CustomButton(
                        label: 'Search Questions',
                        onPressed: () {},
                      ),
                      CustomButton(
                        label: 'Progress Monitor',
                        onPressed: () {},
                      ),
                      CustomButton(
                        label: 'Stopping Distances',
                        onPressed: () {},
                      ),
                      CustomButton(
                        label: 'Help & Support',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.settings, color: Colors.black),
                    onPressed: () {
                      // Add settings functionality here
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.settings, color: Colors.black),
                    onPressed: () {
                      // Add settings functionality here
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.label,
    this.icon,
    required this.onPressed,
  });
@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,  // Set button background color
        foregroundColor: Colors.black,  // Set text/icon color instead of onPrimary
        padding: const EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 4,
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16),
          ),
          if (icon != null) Icon(icon, color: Colors.black),
        ],
      ),
    ),
  );
}

}
