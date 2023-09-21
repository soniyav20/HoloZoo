import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ThreeD extends StatefulWidget {
  @override
  _ThreeDState createState() => _ThreeDState();
}

class _ThreeDState extends State<ThreeD> {
  late Object astro;
  @override
  void initState() {
    astro = Object(fileName: "assets/sloth.glb");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Model Viewer')),
      body: ModelViewer(
        backgroundColor: Colors.teal,
        src: 'assets/sloth.glb',
        alt: "A 3D model of an table soccer",
        autoPlay: true,
        autoRotate: true,
        cameraControls: true,
      ),
    );
  }
}
