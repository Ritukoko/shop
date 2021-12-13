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

 static Color bluish=Color(0xFF33FFF4 );
 static Color darkblue=Color(0xff338BFF);
}

