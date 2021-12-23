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
      appBar: AppBar(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12)
                ),
                alignment:Alignment.center,
                //Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Image.network(catalog.image),
                )
            )
          ],
        ).p20(),
      ),
    );
  }
}
