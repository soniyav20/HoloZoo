import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final text;
  final double? size;
  final FontWeight? weight;
  const GradientText({Key? key, required this.text, this.size, this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [Color(0xff438875), Color(0xff99F2C8)],
      ).createShader(bounds),
      child: Text(
        text,
        style: TextStyle(
          fontSize: size,
          fontWeight: weight,
          color: Colors.white,
        ),
      ),
    );
  }
}
