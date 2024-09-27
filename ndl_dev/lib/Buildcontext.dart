import 'package:flutter/material.dart';

void main() {
  runApp(const BuildContextScreen());
}

class BuildContextScreen extends StatelessWidget {
  const BuildContextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BuildContext Screen'),
      ),
      body: const Center(
          child: MyButton()),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            onPressed: () {
    showBottomSheet(
        context: context,
        builder: (_) {
          return Container(
            width: double.infinity,
            color: Colors.amber,
            padding: const EdgeInsets.all(50),
            child: const Text('Bottom Sheet'),
          );
        });
            },
            child: const Text('Show Bottom Sheet'),
          );
  }
}
