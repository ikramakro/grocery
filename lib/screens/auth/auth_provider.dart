import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart'; // Firestore import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_app/screens/home_screen/home_screen.dart';

class SignUpProvider extends ChangeNotifier {
  // Controllers for user inputs
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController fatherNameController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore =
      FirebaseFirestore.instance; // Firestore instance
// Image picker instance
  final ImagePicker _picker = ImagePicker();
  File? selectedImage;

  Future<void> pickImage(BuildContext context, ImageSource source) async {
    try {
      final XFile? image = await _picker.pickImage(source: source);
      if (image != null) {
        selectedImage = File(image.path);
        // Trigger a rebuild to update the selected image
        notifyListeners();
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  // User signup method
  userSignUp(BuildContext context) async {
    print(
        'email============================================${emailController.text}');
    print(
        'password=========================================${passwordController.text}');
    try {
      // Create user with email and password
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);

      // Save additional details to Firestore
      await firestore.collection('Users').doc(userCredential.user?.uid).set({
        'name': nameController.text,
        'father_name': fatherNameController.text,
        'email': emailController.text,
        'uid': userCredential.user?.uid,
      });

      // Navigate to the next screen
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScr()));
    } catch (error) {
      print('Error: ${error.toString()}');
    }
  }
}
