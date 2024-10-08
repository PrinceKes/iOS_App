import 'package:flutter/material.dart';

class QuestionBankScreen extends StatefulWidget {
  const QuestionBankScreen({super.key});

  @override
  _QuestionBankScreenState createState() => _QuestionBankScreenState();
}

class _QuestionBankScreenState extends State<QuestionBankScreen> {
  // Variable to store the selected option
  int _selectedIndex = 0;

  // List of question bank options
  final List<String> _options = [
    'Car Driver in Great Britain',
    'Car Driver in Northern Ireland',
    'Motorcyclist in Great Britain',
    'Motorcyclist in Northern Ireland',
    'Trainee ADI in Great Britain',
    'Trainee ADI in Northern Ireland'
  ];

  // Function to build each row with radio buttons and flags
  Widget _buildOptionRow(int index, String text, String flagAsset) {
    return ListTile(
      leading: Radio<int>(
        value: index,
        groupValue: _selectedIndex,
        activeColor: Colors.green,
        onChanged: (int? value) {
          setState(() {
            _selectedIndex = value!;
          });
        },
      ),
      title: Text(text),
      trailing: Image.asset(
        flagAsset, // Add the asset for the flag images
        width: 30,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background Image (if any)
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg.jpg'), // Your background image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Content box on top of the background
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Top icon and title
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircularProgressIndicator(
                          color: Colors.green,
                          strokeWidth: 2.5,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Question bank',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.close, color: Colors.red),
                          onPressed: () {
                            Navigator.pop(context); // Close the screen
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Options with flags and radio buttons
                    _buildOptionRow(0, _options[0], 'assets/gb_flag.png'),
                    _buildOptionRow(1, _options[1], 'assets/flag_ni.png'),
                    _buildOptionRow(2, _options[2], 'assets/gb_flag.png'),
                    _buildOptionRow(3, _options[3], 'assets/flag_ni.png'),
                    _buildOptionRow(4, _options[4], 'assets/gb_flag.png'),
                    _buildOptionRow(5, _options[5], 'assets/flag_ni.png'),
                    const SizedBox(height: 20),
                    // Continue Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        // Handle Continue action
                        Navigator.pushReplacementNamed(context, '/Question');
                      },
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Don't Show Again Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        // Handle Don't show again action
                      },
                      child: const Text(
                        "Don't show again",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
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
