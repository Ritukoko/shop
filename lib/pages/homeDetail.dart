import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class homeDetail extends StatelessWidget {

  final Item catalog;
  const homeDetail({Key? key,required this.catalog}) :assert(catalog!=null) ,super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        bottom: false,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Hero(
                tag: catalog,
                    child: Image.network(catalog.image)
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: VxArc(height: 30,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                   // padding: EdgeInsets.only(left: 10,right: 10),
                    padding: EdgeInsets.only(top: 35),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black12,
                    //child: Center(child: catalog.name.text.color(Colors.white).make()),
 //                   child:  Text("${catalog.name}",
    //                textAlign: TextAlign.center,),
                    child: catalog.name.text.xl.center.make(),

                  ),
                ),
              ),
            ),
          ],
        ).p20(),
      ),
    );
  }
}
