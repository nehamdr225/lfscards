import 'package:flutter/material.dart';

class FTheme with ChangeNotifier{
  ThemeData lfsDarkTheme = ThemeData.dark();
 
 ThemeData lfsDefaultTheme = ThemeData(
   fontFamily: 'Crimson',
   textSelectionColor: Colors.black87,
   textTheme: TextTheme(
     headline: TextStyle(
       fontFamily: 'Bree',
       fontSize: 32.0),
     body1: TextStyle(
       fontSize: 16.0,
     ),
     caption: TextStyle(
       fontSize: 12.0,
    )
     )
 );

 ThemeData _themeData;
 bool isDark = false;
 FTheme(){
   _themeData = lfsDefaultTheme;
 }

 ThemeData getTheme() => _themeData;
 setTheme() {
    if (!isDark) {
      _themeData = lfsDarkTheme;
    } else {
      _themeData = lfsDefaultTheme;
    }

    isDark = !isDark;
    notifyListeners();
  }

}