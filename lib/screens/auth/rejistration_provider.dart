import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_app/screens/intro_screen/IntroScr.dart';

class SignUpProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

    userSignUp(BuildContext context) async {
      print('email============================================${emailController.text}');
      print('password=========================================${passwordController.text}');
      try{
        UserCredential userCredential = await auth.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => IntroScr()));
      }catch(error){
        print(error.toString());
      }
  }
}