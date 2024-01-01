import 'package:flutter/material.dart';
import 'dart:math';

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

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int variableDart = 1;
  int variableDart2 = 1;
  void changeface() {
    setState(() {
      variableDart = Random().nextInt(6) + 1;
      variableDart2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton.icon(
              onPressed: () {
                changeface();
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: const CircleBorder(side: BorderSide.none),
              ),
              icon: Image.asset(
                'images/dice$variableDart.png',
                width: 130,
                height: 130,
              ),
              label: const Text(''),
            ),
          ),
          Expanded(
            child: OutlinedButton.icon(
              onPressed: () {
                changeface();
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: const CircleBorder(side: BorderSide.none),
              ),
              icon: Image.asset(
                'images/dice$variableDart2.png',
                width: 130,
                height: 130,
              ),
              label: const Text(''),
            ),
          ),
        ],
      ),
    );
  }
}
