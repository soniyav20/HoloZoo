import 'package:flutter/material.dart';
import 'package:holo_zoo/views/new.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HoloZoo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
      home: VideoPlayerPage(
        videoUrl: 'https://siva-pythonpirates.github.io/lion.mp4',
      ),
    );
  }
}
