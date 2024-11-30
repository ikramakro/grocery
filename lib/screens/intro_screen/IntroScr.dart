import 'package:flutter/material.dart';

import 'package:my_app/screens/home_screen/home_screen.dart';

class IntroScr extends StatelessWidget {
  const IntroScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20, right: 20),
                      child: Image.asset('assest/leaf.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Image.asset('assest/Image.png',
                width: 80,
                height: 80,
              ),
              SizedBox(height: 16),
              Text('Get your groceries Delivered to your home',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Rbobto',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'The best delivery app in town for delivering your daily fresh groceries',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScr()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 70,vertical: 12),
                ),
                child: Text('Shop Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 26),
              Image.asset('assest/Picture.png',
                 ),
               ],
            ),
          ),
        ),
    );
  }
}