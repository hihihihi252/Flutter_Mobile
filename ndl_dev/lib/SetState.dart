import 'package:flutter/material.dart';

void main() {
  runApp(const SetStateApp());
}

class SetStateApp extends StatelessWidget {
  const SetStateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SetStateApp',
      home: JokePage(),
    );
  }
}

class JokePage extends StatefulWidget {
  const JokePage({super.key});

  @override
  State<JokePage> createState() => _JokePageState();
}

class _JokePageState extends State<JokePage> {
  int likeCounter = 0;
  int shareCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Joke Page'),
      ),
      
      body: Center(
          
       child: Column(
        
        children: [
          const SizedBox(
            height: 300,
          ),
          const Text("This is a content of the joke"),
          Text("Lượt Like: $likeCounter"),
          ElevatedButton(
            onPressed: () {
              setState(() {
                likeCounter++; // Increment likeCounter
              });
              print('Like Count: $likeCounter'); // Print updated count
            },
            child: const Text('Like'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                shareCounter++; // Increment shareCounter and update UI
              });
              print('Share Count: $shareCounter'); // Print updated count
            },
            child: const Text('Share'),
          ),
          ElevatedButton(
            onPressed: () {
              // Show dialog with information
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Information'),
                    content: Text(
                      'Likes: $likeCounter\nShares: $shareCounter',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: const Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('View Information'),
          ),
        ],
      ),
    ),
    );
  }
}
