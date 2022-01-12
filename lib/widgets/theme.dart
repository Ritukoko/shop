import 'package:flutter/material.dart';

class MyTheme{
 static ThemeData lightTheme(BuildContext context)=>ThemeData(
  cardColor: Colors.white,
   canvasColor: bluish,
   buttonColor: darkblue,
   accentColor: Colors.black,

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
   cardColor: Colors.black,
   canvasColor: Colors.grey[800],
   accentColor: Colors.white,
   buttonColor: Colors.deepPurpleAccent,
  appBarTheme: AppBarTheme(
   color: Colors.black,
   iconTheme: IconThemeData(color: Colors.white)
  )
  );

 static Color bluish=Color(0xffdfaee8);
 static Color darkblue=Color(0xffd5c0ee);
}

