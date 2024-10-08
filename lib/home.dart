import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.jpg'),
                fit: BoxFit.cover, // Ensures the image covers the entire background
              ),
            ),
          ),
          // Foreground Content
          SafeArea(
            child: Column(
              children: [
                _buildHeader(),
                _buildTestButtons(context),
                _buildBottomIcons(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',  // Replace with your actual logo
            height: 50,
          ),
          const SizedBox(width: 10),
          _buildTitle(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "DRIVING",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "TEST",
          style: TextStyle(
            color: Colors.red,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildTestButtons(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTestButton(context, 'THEORY TEST', Colors.black, '/theory_test'),
            _buildTestButton(context, 'HAZARD PERCEPTION', Colors.red, '/questionBankScreen'),
            _buildTestButton(context, 'HIGHWAY CODE', Colors.deepPurple, '/DProcess'),
            _buildTestButton(context, 'ROAD SIGNS', Colors.purple, '/downloadscreen'),
            _buildTestButton(context, 'BONUS CONTENT', Colors.green, '/bonus'),
          ],
        ),
      ),
    );
  }

  Widget _buildTestButton(BuildContext context, String title, Color color, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color, // Updated backgroundColor
            padding: const EdgeInsets.symmetric(vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomIcons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIconButton(context, Icons.settings, '/settings'),
          _buildIconButton(context, Icons.help, '/help'),
        ],
      ),
    );
  }

  Widget _buildIconButton(BuildContext context, IconData icon, String route) {
    return IconButton(
      icon: Icon(icon, color: Colors.white, size: 40),
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
