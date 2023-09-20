import 'package:flutter/material.dart';
import 'package:holo_zoo/views/widgets/text_box.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final double? width;
  final double? height;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  const GradientButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.width,
      this.height,
      this.size,
      this.color,
      this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                colors: [Color(0xff438875), Color(0xff99F2C8)],
              )),
          child: Center(
            child: AppTextBox(
              text: text,
              size: size ?? null,
              color: color ?? null,
              weight: weight ?? null,
            ),
          )),
    );
  }
}
