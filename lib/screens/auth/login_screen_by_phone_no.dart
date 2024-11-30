import 'package:flutter/material.dart';

import 'package:my_app/main.dart';
import 'package:my_app/screens/auth/login_screen.dart';
import 'package:my_app/screens/intro_screen/IntroScr.dart';

import 'rejistration_screen_by_phone_no.dart';

class LoginPScr extends StatelessWidget {
  const LoginPScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                    'assest/Image.png',
                ),
                SizedBox(height:40),
                Text(
                  'Input Your Credential',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'To Login',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Phone No',
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Phone No',
                        prefixIcon: Icon(Icons.call),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility_off),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (bool? value) {} ),
                        Text(
                          'Remembere me',
                        ),
                      ],
                    ),
                    TextButton
                      (onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                        ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => IntroScr()));
                    },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 130, vertical: 12),
                    backgroundColor: Colors.green,
                  ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  width: 320,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScr()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Reduced horizontal padding
                      backgroundColor: Colors.green,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Center-aligns text within the row
                      children: [
                        Text(
                          'Login By Email',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height:10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont have an Account?',
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => RegScr2()));
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                      ),
                    ],
                ),
              ],
            ),
          ),
          ),
        ),
      );
  }
}