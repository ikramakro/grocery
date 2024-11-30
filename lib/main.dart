import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screens/auth/auth_provider.dart';
import 'package:my_app/screens/auth/splash_screen.dart';
import 'package:my_app/screens/home_screen/home_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ikram());
}

class ikram extends StatelessWidget {
  const ikram({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SignUpProvider>(
            create: (context) => SignUpProvider()),
        ChangeNotifierProvider<UserProvider>(
            create: (context) => UserProvider()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: const SplashScreen()),
    );
  }
}
