import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/screens/auth/rejistration_provider.dart';
import 'package:provider/provider.dart';
import 'screens/auth/login_screen.dart';


void main() async{
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
    ChangeNotifierProvider<SignUpProvider>( create: (context) => SignUpProvider()),
    ],
    child:MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen()
    ),
    );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
          () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) =>  LoginScr()));
      },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assest/Image.png'),
            SizedBox(height: 10),
            Text(
              'AgroMart',
              style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}








