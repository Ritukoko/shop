/*
import 'package:flutter/material.dart';
import 'package:untitled/widgets/drawer.dart';
import 'package:untitled/models/catalog.dart';
import 'package:untitled/widgets/itemWidget.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

*/
/*@override
void initstate(){
  super.initState();
  loadData();
}

loadData() async{
  await Future.delayed(Duration(seconds:2));
  final catalogJsn=
      await rootBundle.loadString("assets/files/catalog.json");
  final decodedData=jsonDecode(catalogJsn);
  var product
}*//*


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final dummyList=List.generate(20, (index) => Model.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Catalog App   "
          ),
        )
      ),

      body:Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context,index){
            return ItemWidget(item: dummyList[index]);
          }
        ),
      )

      //drawer: MyDrawer(),

    );
  }
}
*/

import 'package:untitled/widgets/drawer.dart';
import 'package:untitled/models/catalog.dart';
import 'package:untitled/widgets/itemWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
    await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
