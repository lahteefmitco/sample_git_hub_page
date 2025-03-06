import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String _welcome = "";

  @override
  void initState() {
    _getWelcomeMessage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 200,
                width: 300,
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(26),
                  child: Text(
                    'Hello World 3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 23),
              ElevatedButton(onPressed: () {}, child: Text("Press me")),
              const SizedBox(height: 23),
              Text(_welcome)
            ],
          ),
        ),
      ),
    );
  }

  Future _getWelcomeMessage() async {
    try {
      final response = await Dio().get("https://grocery-app-1h07.onrender.com");
      if (response.statusCode == 200) {
        _welcome = response.data;
        setState(() {});
      }
    } catch (e) {
      log("Error: - ${e.toString()}");
    }
  }
}
