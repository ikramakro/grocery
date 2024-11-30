import 'package:flutter/material.dart';
import 'package:my_app/screens/home_screen/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScr extends StatelessWidget {
  const HomeScr({super.key});

  @override
  Widget build(BuildContext context) {
    final userName = Provider.of<UserProvider>(context).userName;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Good Morning',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        userName.isEmpty ? 'Loading...' : userName,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(width: 40),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.green,
                      size: 25,
                    ),
                    Text(
                      'My Flat',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Category',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      size: 25,
                      color: Colors.green,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
