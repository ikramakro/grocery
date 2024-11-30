import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_app/screens/auth/auth_provider.dart';
import 'package:my_app/screens/auth/login_screen.dart';
import 'package:provider/provider.dart';

class RegScr extends StatelessWidget {
  RegScr({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpProvider>(
      builder: (context, provider, child) => Scaffold(
        key: _scaffoldKey,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset('assest/Image.png'),
                  InkWell(
                    onTap: () {
                      _scaffoldKey.currentState?.showBottomSheet(
                        (context) => Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          color: Colors.white,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton.icon(
                                onPressed: () {
                                  Navigator.pop(
                                      context); // Close the bottom sheet
                                  provider.pickImage(
                                      context, ImageSource.camera);
                                },
                                icon: const Icon(Icons.camera_alt),
                                label: const Text('Camera'),
                              ),
                              TextButton.icon(
                                onPressed: () {
                                  Navigator.pop(
                                      context); // Close the bottom sheet
                                  provider.pickImage(
                                      context, ImageSource.gallery);
                                },
                                icon: const Icon(Icons.image),
                                label: const Text('Gallery'),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: provider.selectedImage != null
                              ? FileImage(provider.selectedImage!)
                                  as ImageProvider
                              : null,
                          child: provider.selectedImage == null
                              ? const Icon(Icons.person, size: 50)
                              : null,
                        ),
                        const Icon(Icons.camera_alt),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  // The rest of your registration UI...
                  const Text(
                    'Sign up for AgroMart',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Sign up for AgroMart',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Name'),
                      const SizedBox(height: 8),
                      TextField(
                        controller: provider.nameController,
                        decoration: const InputDecoration(
                          hintText: 'Enter Your Name',
                          prefixIcon: Icon(Icons.person),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Father Name'),
                      const SizedBox(height: 8),
                      TextField(
                        controller: provider.fatherNameController,
                        decoration: const InputDecoration(
                          hintText: 'Enter your Father Name',
                          prefixIcon: Icon(Icons.person),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Email'),
                      const SizedBox(height: 8),
                      TextField(
                        controller: provider.emailController,
                        decoration: const InputDecoration(
                          hintText: 'Enter your email address',
                          prefixIcon: Icon(Icons.email),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Password'),
                      const SizedBox(height: 8),
                      TextField(
                        controller: provider.passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Enter Your Password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility_off),
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: () {
                      provider.userSignUp(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 130, vertical: 12),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an Account'), // Corrected text
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScr()));
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
