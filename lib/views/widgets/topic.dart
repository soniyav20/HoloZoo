import 'package:flutter/material.dart';
import 'package:holo_zoo/views/widgets/text_box_font.dart';

class Topic extends StatelessWidget {
  final String text;
  final Icon icon;
  const Topic({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          AppTextBoxFont(
            text: text,
            size: 24,
            weight: FontWeight.w500,
          ),
          SizedBox(
            width: 10,
          ),
          icon
        ],
      ),
    );
  }
}
