import 'dart:async';

import 'package:flutter/material.dart';
import 'package:holo_zoo/views/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _translateAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    _translateAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeIn,
      ),
    );
    Timer(
      const Duration(seconds: 3),
      () async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const OnBoarding(),
          ),
        );
      },
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FadeTransition(
        opacity: _translateAnimation,
        child: Center(
          child: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [Color(0xff438875), Color(0xff99F2C8)],
            ).createShader(bounds),
            child: Text(
              'HoloZoo',
              style: TextStyle(
                fontSize: 40.0,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
