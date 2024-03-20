import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Container(
          decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              borderRadius: BorderRadius.circular(12),
              border: Border.all()),
          padding: EdgeInsets.all(14),
          child: Text('Hello World 2!'),
        ),
      ),
    );
  }
}