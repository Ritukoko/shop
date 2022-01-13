import 'package:flutter/material.dart';
import 'package:untitled/models/cartmodel.dart';
import 'package:untitled/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:untitled/core/store.dart';


class addtocart extends StatelessWidget {
  final Item catalog;
  
  addtocart({
    Key? key,required this.catalog,
  }) : super(key: key);

  //static bool isincart = false;
  //static bool added=false;

  @override
  Widget build(BuildContext context) {
    VxState.listen(context,to:[AddMutation,RemoveMutation]);
    final CartModel _cart= (VxState.store as Mystore).cart;
bool isincart;
    //bool isInCart = _cart.items.contains(catalog) ?? false;
  if(_cart.items.contains(catalog)==true)
    isincart=true;
  else
    isincart=false;
    //bool isincart = (_cart.items.contains(catalog)==null)?true:false;
    print(_cart.items.contains(catalog));
    print("isincart=$isincart");
    /*if(added==true)
      isincart=true;
    else
      isincart=false;*/

    return ElevatedButton(
      onPressed: () {
        if (!isincart) {
         AddMutation(catalog);
         //added=true;
        }

      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            context.theme.buttonColor,
          ),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isincart ? Icon(Icons.done) : "Buy".text.make(),
    );
  }
}