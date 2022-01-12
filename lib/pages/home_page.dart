import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/models/cartmodel.dart';
import 'dart:convert';
import 'package:untitled/models/catalog.dart';
import 'package:untitled/utils/routes.dart';
import 'package:untitled/widgets/drawer.dart';
import 'package:untitled/widgets/theme.dart';
import 'package:untitled/widgets/itemWidget.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:untitled/pages/homeWidgets/catalogHeader.dart';
import 'package:untitled/pages/homeWidgets/catalogList.dart';
import 'package:untitled/pages/cart.dart';
import 'package:untitled/pages/homeWidgets/add_tocart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
    await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    Model.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.cardColor,
        body: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CatalogHeader(),
              if (Model.items != null && Model.items.isNotEmpty)
                CatalogList().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
    drawer:MyDrawer()
      ,
    floatingActionButton: FloatingActionButton(
      onPressed: ()=>Navigator.pushNamed(context, MyRoutes.cartroute),
      backgroundColor: Colors.pinkAccent[200],
      child: Icon(Icons.shopping_cart),
    ),);
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key ?key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatalogImage(
            image: catalog.image,
          ),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  catalog.name.text.lg.color(context.accentColor).bold.make(),
                  catalog.desc.text.textStyle(context.captionStyle).make(),
                  10.heightBox,
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    buttonPadding: EdgeInsets.zero,
                    children: [
                      "\$${catalog.price}".text.bold.xl.make(),
                      addtocart(catalog:catalog)
                ],
                  ).pOnly(right: 8.0)
                ],
              ))
        ],
      ),
    ).color(context.canvasColor).rounded.square(150).make().py16();
  }
}



class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key ?key, required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(context.cardColor).make().p16().w40(context);
  }
}