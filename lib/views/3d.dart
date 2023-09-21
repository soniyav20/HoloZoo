import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class ThreeD extends StatefulWidget {
  @override
  _ThreeDState createState() => _ThreeDState();
}

class _ThreeDState extends State<ThreeD> {
  late Object astro;
  @override
  void initState() {
    astro = Object(fileName: "assets/Heart.obj");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Container(
        // providing linear gradient to the
        // background with two colours

        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(astro);
                  scene.camera.zoom = 10;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
