import 'package:flutter/material.dart';
import 'package:lfs/screens/login_screen/widgets/Button.dart';
import 'package:lfs/screens/login_screen/widgets/Logo.dart';
import 'package:lfs/widgets/FancyText.dart';

class UserPromptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Logo(),
          //FancyText(),
          Button(
            color: Colors.blue[900],
            text: "Sign-in",
            textColor: Colors.white,
          ),
          Button(
            text: "Sign-up",
            textColor: Colors.black87,
          ),
          FancyText(
            color: Colors.blue[900],
            size: 15.0,
            text: " ",
          )
        ],
      ),
    ));
  }
}
