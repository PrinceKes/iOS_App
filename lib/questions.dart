import 'package:flutter/material.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  // Keep track of the selected option
  int _selectedIndex = 0;

  // List of options
  final List<String> _options = [
    'Car Driver in Great Britain',
    'Car Driver in Northern Ireland',
    'Motorcyclist in Great Britain',
    'Motorcyclist in Northern Ireland',
    'Trainee ADI in Great Britain',
    'Trainee ADI in Northern Ireland',
  ];

  // List of flags (image path)
  final List<String> _flags = [
    'assets/gb_flag.png', // Replace with actual flag paths
    'assets/gb_flag.png',
    'assets/gb_flag.png',
    'assets/gb_flag.png',
    'assets/gb_flag.png',
    'assets/gb_flag.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'assets/bg.jpg', // Replace with the actual background image path
            fit: BoxFit.cover,
          ),
          // Overlay to darken the background slightly
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          // Main content card
          Center(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Header with close button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Loading icon
                      const CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                        strokeWidth: 2.0,
                      ),
                      const Text(
                        'Question Bank',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      // Close button
                      IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: Colors.red,
                          size: 24.0,
                        ),
                        onPressed: () {
                          // Navigate back or close the page
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // List of radio buttons with flags
                  Column(
                    children: List.generate(_options.length, (index) {
                      return ListTile(
                        leading: Radio(
                          value: index,
                          groupValue: _selectedIndex,
                          onChanged: (value) {
                            setState(() {
                              _selectedIndex = value!;
                            });
                          },
                          activeColor: Colors.green,
                        ),
                        title: Text(_options[index]),
                        trailing: Image.asset(
                          _flags[index], // Replace with flag images
                          height: 24,
                          width: 24,
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 20),

                // Continue button
                ElevatedButton(
                  onPressed: () {
                    // Handle continue action (e.g., navigate to the next page)
                    // Navigator.pushNamed(context, '/nextPage');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // Button color (change from primary to backgroundColor)
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),

                  const SizedBox(height: 10),
                  // Don't show again button
                  TextButton(
                    onPressed: () {
                      // Handle don't show again action (e.g., save preference)
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      backgroundColor: Colors.red, // Button color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      "Don't show again",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
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
