import 'package:flutter/material.dart';
import 'SetState.dart'; // Ensure this import is correct

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HELLO'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is body'),
            ElevatedButton(
              onPressed: () {
                // Navigate to SetstateApp
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SetStateApp()),
                );
              },
              child: const Text('Go to SetstateApp'),
            ),
          ],
        ),
      ),
    );
  }
}