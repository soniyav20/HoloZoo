import 'package:flutter/material.dart';

class AppTextBoxFont extends StatelessWidget {
  final text;
  final Color? color;
  final double? size;
  final double? height;
  final FontWeight? weight;
  const AppTextBoxFont(
      {Key? key,
      required this.text,
      this.color,
      this.size,
      this.weight,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: weight,
          height: height,
          fontFamily: "Nunito"),
    );
  }
}
