import 'package:flutter/material.dart';
import 'package:holo_zoo/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HoloZoo',
      theme: ThemeData(),
      home: SplashScreen(),
    );
  }
}
