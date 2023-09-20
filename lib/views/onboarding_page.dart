import 'package:flutter/material.dart';
import 'package:holo_zoo/views/home_page.dart';
import 'package:holo_zoo/views/widgets/gradient_button.dart';
import 'package:holo_zoo/views/widgets/text_box.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Image(image: AssetImage('assets/zoo.png')),
              )),
          Container(
            width: MediaQuery.of(context).size.width / 1.4,
            child: Column(
              children: [
                AppTextBox(
                  text: "Welcome to HoloZoo:",
                  color: Colors.white,
                  size: 32,
                  weight: FontWeight.w600,
                ),
                SizedBox(
                  height: 16,
                ),
                AppTextBox(
                  text:
                      "Prepare to be amazed as we bring extinct and existing species back to life through cutting-edge holographic technology.",
                  color: Colors.white,
                  size: 20,
                  height: 2,
                  weight: FontWeight.w600,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: GradientButton(
          text: "Get Started",
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => const HomePage(),
              ),
            );
          },
          color: Colors.black,
          weight: FontWeight.w600,
          size: 20,
          width: MediaQuery.of(context).size.width / 1.3,
          height: MediaQuery.of(context).size.height / 16,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
