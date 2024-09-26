// main.dart
import 'package:flutter/material.dart';
import 'first.dart'; // Import the file where FirstScreen is defined

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstScreen()),
            );
          },
          child: const Text('Go to First Screen'),
        ),
      ),
    );
  }
}