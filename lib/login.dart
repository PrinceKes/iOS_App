import 'package:flutter/material.dart';
import 'home.dart'; // Make sure to import your HomeScreen

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'assets/bg.jpg', // Replace with the actual background image path
            fit: BoxFit.cover,
          ),
          // Dark overlay on top of the background
          Container(
            color: Colors.black.withOpacity(0.4),
          ),
          // Main content
          Padding(
            padding: const EdgeInsets.all(16.0),
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
                  'assets/logo.png', // Replace with the actual logo image path
                  height: 100,
                ),
                const SizedBox(height: 50),
                // Login text
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                // Email Input Field
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'E-mail',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Password Input Field
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                // Submit Button
                ElevatedButton(
                  onPressed: () {
                    // Navigate to HomeScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Background color
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                // Navigate to Sign Up Page
                GestureDetector(
                  onTap: () {
                    // Navigate to Sign-up page
                    Navigator.pushNamed(context, '/signup'); // Assuming /signup route is set
                  },
                  child: const Text(
                    'Don\'t have an account? Sign Up',
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
        ],
      ),
    );
  }
}




// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           // Background image
//           Image.asset(
//             'assets/bg.jpg', // Replace with the actual background image path
//             fit: BoxFit.cover,
//           ),
//           // Dark overlay on top of the background
//           Container(
//             color: Colors.black.withOpacity(0.4),
//           ),
//           // Main content
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // App Title
//                 Text(
//                   'WELCOME TO SOULJA THEORY DRIVING APP',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 24.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 // Logo
//                 Image.asset(
//                   'assets/logo.png', // Replace with the actual logo image path
//                   height: 100,
//                 ),
//                 SizedBox(height: 40),
//                 // Login text
//                 Text(
//                   'Login',
//                   style: TextStyle(
//                     fontSize: 22.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 // Email Input Field
//                 TextField(
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Colors.white,
//                     hintText: 'E-mail',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 // Password Input Field
//                 TextField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Colors.white,
//                     hintText: 'Password',
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 30),
//                 // Submit Button
//                 ElevatedButton(
//                   onPressed: () {
//                     // Handle login logic here, e.g., API call or Firebase authentication
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red, // Background color
//                     padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                   ),
//                   child: Text(
//                     'Login',
//                     style: TextStyle(fontSize: 18, color: Colors.white),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 // Navigate to Sign Up Page
//                 GestureDetector(
//                   onTap: () {
//                     // Navigate to Sign-up page
//                     Navigator.pushNamed(context, '/signup'); // Assuming /signup route is set
//                   },
//                   child: Text(
//                     'Don\'t have an account? Sign Up',
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.white,
//                       decoration: TextDecoration.underline,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




















// // import 'package:flutter/material.dart';

// // class SignUpScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         fit: StackFit.expand,
// //         children: [
// //           // Background image
// //           Image.asset(
// //             'assets/bg.jpg', // Replace with the actual background image path
// //             fit: BoxFit.cover,
// //           ),
// //           // Dark overlay on top of the background
// //           Container(
// //             color: Colors.black.withOpacity(0.4),
// //           ),
// //           // Main content
// //           Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 // App Title
// //                 Text(
// //                   'WELCOME TO SOULJA THEORY DRIVING APP',
// //                   textAlign: TextAlign.center,
// //                   style: TextStyle(
// //                     fontSize: 24.0,
// //                     fontWeight: FontWeight.bold,
// //                     color: Colors.white,
// //                   ),
// //                 ),
// //                 SizedBox(height: 20),
// //                 // Logo
// //                 Image.asset(
// //                   'assets/bg.jpg', // Replace with the actual logo image path
// //                   height: 100,
// //                 ),
// //                 SizedBox(height: 40),
// //                 // Sign Up text
// //                 Text(
// //                   'Sign Up',
// //                   style: TextStyle(
// //                     fontSize: 22.0,
// //                     fontWeight: FontWeight.bold,
// //                     color: Colors.white,
// //                   ),
// //                 ),
// //                 SizedBox(height: 20),
// //                 // Name Input Field
// //                 TextField(
// //                   decoration: InputDecoration(
// //                     filled: true,
// //                     fillColor: Colors.white,
// //                     hintText: 'Enter Name',
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(8.0),
// //                     ),
// //                   ),
// //                 ),
// //                 SizedBox(height: 20),
// //                 // Email Input Field
// //                 TextField(
// //                   decoration: InputDecoration(
// //                     filled: true,
// //                     fillColor: Colors.white,
// //                     hintText: 'E-mail',
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(8.0),
// //                     ),
// //                   ),
// //                 ),
// //                 SizedBox(height: 20),
// //                 // Password Input Field
// //                 TextField(
// //                   obscureText: true,
// //                   decoration: InputDecoration(
// //                     filled: true,
// //                     fillColor: Colors.white,
// //                     hintText: 'Password',
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(8.0),
// //                     ),
// //                   ),
// //                 ),
// //                 SizedBox(height: 30),
// //                 // Submit Button
// //                 ElevatedButton(
// //                   onPressed: () {
// //                     // Handle sign-up logic here, e.g., API call or Firebase authentication
// //                   },
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: Colors.red, // Background color
// //                     padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
// //                     shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(8.0),
// //                     ),
// //                   ),
// //                   child: Text(
// //                     'Sign Up',
// //                     style: TextStyle(fontSize: 18, color: Colors.white),
// //                   ),
// //                 ),
// //                 SizedBox(height: 20),
// //                 // Navigate to Login Page
// //                 GestureDetector(
// //                   onTap: () {
// //                     // Navigate to Login page
// //                     Navigator.pushNamed(context, '/login');  // Assuming /login route is set
// //                   },
// //                   child: Text(
// //                     'Already have an account? Login',
// //                     style: TextStyle(
// //                       fontSize: 18,
// //                       color: Colors.white,
// //                       decoration: TextDecoration.underline,
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
