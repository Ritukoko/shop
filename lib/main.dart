import 'package:flutter/material.dart';
import 'package:untitled/core/store.dart';
import 'package:untitled/pages/cart.dart';
import 'package:untitled/utils/routes.dart';
import 'package:untitled/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/login.dart';
import 'pages/home_page.dart';
import 'widgets/theme.dart';

void main() {
  runApp(VxState(store:Mystore(),child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
          darkTheme: MyTheme.DarkTheme(context),

      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeroute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeroute:(context)=>HomePage(),
        "/login":(context)=>LoginPage(),
        MyRoutes.cartroute:(context)=>CartPage(),
        //"/cart":(context)=>mycart(),
      }
    );
  }
}
