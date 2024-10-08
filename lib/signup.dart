import 'package:flutter/material.dart';
import 'registrationSuccess.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // Controllers for the text fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'assets/bg.jpg', // Background image path
            fit: BoxFit.cover,
          ),
          // Overlay to darken the background a little
          Container(
            color: Colors.black.withOpacity(0.4),
          ),
          // Main content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // App Title
                  const Text(
                    'WELCOME TO SOULJA THEORY DRIVING APP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Logo
                  Image.asset(
                    'assets/logo.png', // Logo image path
                    height: 100,
                  ),
                  const SizedBox(height: 40),
                  // Sign Up text
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Name Input Field
                  _buildTextField(_nameController, 'Enter Name', false, isEmail: false), // No email validation for Name
                  const SizedBox(height: 20),
                  // Email Input Field
                  _buildTextField(_emailController, 'E-mail', false, isEmail: true), // Email validation for Email
                  const SizedBox(height: 20),
                  // Password Input Field
                  _buildTextField(_passwordController, 'Password', true, isEmail: false), // Password validation
                  const SizedBox(height: 20),
                  // Submit Button
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Handle the sign-up action here
                        print("Sign Up button pressed"); // Replace with your signup logic
                        
                        // Navigate to the RegistrationSuccessScreen after form validation
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RegistrationSuccessScreen()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // Use backgroundColor instead of primary
                      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),

                  const SizedBox(height: 20),
                  // Login Text
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Navigate back to the login page
                    },
                    child: const Text(
                      'Already have an account? Login',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
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

  // A method to build text fields to avoid repetition
  Widget _buildTextField(TextEditingController controller, String hintText, bool isPassword, {bool isEmail = false}) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword, // Toggle password visibility
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        // Password validation
        if (isPassword && value.length < 6) {
          return 'Password must be at least 6 characters';
        }
        // Email validation
        if (isEmail && !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
          return 'Please enter a valid email';
        }
        return null; // Return null if the input is valid
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
