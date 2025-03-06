import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Container(
            alignment: Alignment.center,
            height: 200,
            width: 300,
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(26),
              child: Text('Hello World 3'),
            ),
          ),
        ),
      ),
    );
  }
}
