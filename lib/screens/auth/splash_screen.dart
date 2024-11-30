import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screens/auth/login_screen.dart';
import 'package:my_app/screens/home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Delay and navigate based on login status
    Future.delayed(
      const Duration(seconds: 2),
      () {
        _checkUserLogin();
      },
    );
  }

  void _checkUserLogin() {
    // Get the current user
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      // If user is logged in, navigate to Dashboard
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScr()),
      );
    } else {
      // If user is not logged in, navigate to Login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScr()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assest/Image.png'),
            const SizedBox(height: 10),
            const Text(
              'AgroMart',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
