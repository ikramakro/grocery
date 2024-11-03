import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const ikram());
}

class ikram extends StatelessWidget {
  const ikram({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen());
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
            MaterialPageRoute(builder: (context) => const introScreen()));
      },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body:Center(
        child: Image.asset('assest/Image.png'),
      ) ,
    );
  }
}
class introScreen extends StatelessWidget {
  const introScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Container(
        child: Image.asset('assest/leaf.png'),
        ),
      ),
      body: Container(
        child: Column(
            mainAxisAlignment:
            MainAxisAlignment.center,
            crossAxisAlignment:
            CrossAxisAlignment.center,
            children:
            [
            Image.asset('assest/Image.png'),
        Text(
          'Get your groceries ',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'delivered to your home',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'The best delivery app in town for delivering your daily fresh groceries ',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 16,
            ),
          ),
        ),
              ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/shopping');
          },
          child: Text('Shop Now'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assest/Picture.png'),
          ),
        ),
        ],
      ),
    ),
    );
  }
}
