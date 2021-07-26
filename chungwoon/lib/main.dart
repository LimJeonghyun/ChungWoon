import 'package:chunwoon/screens/app_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChungWoon',
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.cyan,
      ),
      home: AppScreen(),
    );
  }
}
