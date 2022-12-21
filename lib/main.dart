import 'package:flutter/material.dart';
import 'package:meeutu/screens/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeeTU',
      home: Start(),
      color: Colors.purple,
    );
  }
}
