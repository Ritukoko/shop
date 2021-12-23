import 'package:flutter/material.dart';
import 'package:untitled/models/catalog.dart';
import 'package:untitled/pages/homeDetail.dart';
import '../home_page.dart';
import 'package:untitled/utils/routes.dart';


class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: Model.items.length,
      itemBuilder: (context, index) {
        final catalog = Model.items[index];
        return InkWell(
          onTap: ()=>Navigator.push(
              context, MaterialPageRoute(
              builder: (context)=>homeDetail(catalog: catalog))),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}