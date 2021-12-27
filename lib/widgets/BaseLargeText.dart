import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseLargeText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;

  const BaseLargeText(
      {Key? key,
      this.size = 30.0,
      this.color = Colors.black,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: FontWeight.bold,
          fontFamily: 'Nunito'),
    );
  }
}
