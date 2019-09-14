import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color color;
  final String text;
  final onPressed;
  final Color textColor;
  Button({this.color, this.text, this.onPressed, this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200.0,
        height: 50.0,
        child: RaisedButton(
          color: Colors.black,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 24.0,
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          onPressed: onPressed,
        ));
  }
}
