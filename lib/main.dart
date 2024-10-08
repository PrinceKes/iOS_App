import 'package:flutter/material.dart';
import 'load.dart';
import 'login.dart';
import 'signup.dart';
import 'home.dart';
import 'questions.dart';
import 'registrationSuccess.dart';
import 'DProcess.dart';
import 'Appinfo.dart';
import 'BonusScreen.dart';
import 'DownloadScreen.dart';
import 'DownloadScreen2.dart';
import 'LoadingScreen.dart';
import 'permissionscreen.dart';
import 'QuestionBankScreen.dart';
import 'Question.dart';
import 'TestDateScreen.dart';
import 'TheoryTestScreen.dart';
import 'CategoryPractice.dart'; 
import 'reminder.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      theme: ThemeData(
        primarySwatch: Colors.blue,  // Define your app's theme
      ),
      initialRoute: '/load',  // Set the initial screen to LoadPage
      routes: {
        // Define routes for all the screens
        '/load': (context) => const LoadPage(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpPage(),
        '/registration_success': (context) => const RegistrationSuccessScreen(),
        '/home': (context) => const HomeScreen(),
        '/DProcess': (context) => const DownloadProcessScreen(),
        '/questions': (context) => const QuestionsPage(),
        '/Appinfo': (context) => const AppInfoScreen(),
        
        // Add new routes for the other screens
        '/bonus': (context) => const BonusScreen(),
        '/downloadscreen': (context) => const DownloadRoadSignsScreen(),
        '/DownloadScreen2': (context) => const DownloadScreen2(),
        '/loading': (context) => const LoadingScreen(),
        '/permissions': (context) => const PermissionScreen(),
        '/questionBankScreen': (context) => const QuestionBankScreen(),
        '/Question': (context) => const QuestionScreen(),
        '/test_date': (context) => const TestDateScreen(),
        '/theory_test': (context) => const TheoryTestScreen(),
        '/CategoryPractice': (context) => const CategoryPracticeScreen(),
         '/reminder': (context) => const ReminderPage(), 
      },
    );
  }
}


