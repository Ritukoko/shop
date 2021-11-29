import 'package:flutter/material.dart';

class MyTheme{
 static ThemeData lightTheme(BuildContext context)=>ThemeData(
    appBarTheme: AppBarTheme(
        color: Colors.white,
        titleTextStyle: TextStyle(
            color: Colors.black,
          fontSize: 20.0
        ),
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme
    ),
  );
 static ThemeData DarkTheme(BuildContext context)=>ThemeData(
    brightness: Brightness.dark,
  );

}