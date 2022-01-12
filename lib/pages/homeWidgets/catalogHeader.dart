import 'package:flutter/material.dart';
import 'package:untitled/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  static Color cat= Color(0xffdfaee8);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       //"Catalog App".text.xl5.bold.center.color(MyTheme.bluish).make(),
        //"Trending products".text.center.xl2.make(),
      Center(child: Text("Catalog App",
      style: TextStyle(
        fontSize: 40,
        //color: cat
        color: MyTheme.bluish
      ),),),
        Center(child: Text("Trending products",textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20
      ),)),
      ],
    );
  }
}