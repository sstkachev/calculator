import 'package:flutter/material.dart';
import 'package:simple_calc/calc_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calc',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULATOR'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text('numbers'),
          SizedBox(
            height: 24,
          ),
          Divider(),
          ButtonCircle(
            buttonText: '1',
            buttonFunc: () {},
          ),
        ],
      ),
    );
  }
}
