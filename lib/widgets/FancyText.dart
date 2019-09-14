import 'package:flutter/material.dart';

class FancyText extends StatelessWidget {
  final String text;
  final double size;
  final Function onTap;
  final Color color;

  FancyText({this.text, this.size, this.onTap, this.color});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Text(text,
            style: TextStyle(
                fontSize: size,
                color: color,
                decoration: TextDecoration.underline,
                decorationColor: color,)),
      ),
    );
  }
}