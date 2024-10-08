import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // To remove the debug banner
      home: TestDateScreen(),
    );
  }
}

class TestDateScreen extends StatelessWidget {
  const TestDateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0), // To center the content with padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Vertically centers the content
            children: [
              // Loading spinner (circular progress indicator)
              const CircularProgressIndicator(
                color: Colors.green, // Custom color for loading spinner
              ),
              const SizedBox(height: 20), // Space between spinner and text

              // Header Text (Set your test date)
              const Text(
                'Set your test date',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Custom color for header
                ),
              ),
              const SizedBox(height: 20), // Space between header and description

              // Body Text (Description of setting test date)
              const Text(
                'Have you got your official Driving Theory Test date yet? Yes? Set it NOW so we can send you helpful reminders for what you need to practise in order to pass',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87, // Custom color for description
                ),
              ),
              const SizedBox(height: 30), // Space between text and buttons

              // "Set my test date" button
              ElevatedButton(
                onPressed: () {
                  // Add functionality to set the test date
                  Navigator.pushReplacementNamed(context, '/reminder');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Set button background color
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 60.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                ),
                child: const Text(
                  'Set my test date',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, // Text color
                  ),
                ),
              ),
              const SizedBox(height: 15), // Space between the two buttons

              // "Remind me later" button
              ElevatedButton(
                onPressed: () {
                  // Add functionality to remind later
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Set button background color to red
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 60.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                ),
                child: const Text(
                  'Remind me later',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, // Text color
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
