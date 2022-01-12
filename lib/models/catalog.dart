
import 'dart:convert';

//import 'dart:ffi';

class Model{

  static final catModel= Model._internal();
  Model._internal();
  factory Model()=> catModel;

  static List<Item> items=[];

 Item getbyId(int id)=>
      items.firstWhere((element) => element.id==id,orElse: null);

 static Item getbyPosition(int pos)=>items[pos];
}

class Item{
   int id;
  final String name;
  final String desc;
   num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

  factory Item.fromMap(Map<String,dynamic>map){
   return Item(
     id:map["id"],
     name:map["name"],
     desc:map["desc"],
     price:map["price"],
     color:map["color"],
     image:map["image"]
   );
  }

  toMap()=>{
    "id":id,
    "name":name,
    "desc":desc,
    "price":price,
    "color":color,
    "image":image
  };
}

