import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 250, 96, 85),
        appBar: AppBar(
          title: const Center(
            child: Text(
              'dices game',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset(
                'images/dice1.png',
                width: 50,
                height: 100,
              ),
              label: const Text(''),
            ),
          ),
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset(
                'images/dice2.png',
                width: 50,
                height: 100,
              ),
              label: const Text(''),
            ),
          ),
        ],
      ),
    );
  }
}
