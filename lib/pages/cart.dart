import 'package:flutter/material.dart';
import 'package:untitled/core/store.dart';
import 'package:untitled/models/cartmodel.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:untitled/core/store.dart';
import 'package:untitled/pages/homeWidgets/add_tocart.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          cartlist().expand(),
          Divider(),
         cartTotal(),
          //_cartTotal(),
        ],
      ),

    );
  }
}
class cartlist extends StatelessWidget{
  final CartModel _cart=(VxState.store as Mystore).cart;
  @override
  Widget build(BuildContext context) {
  VxState.listen( context,to:[RemoveMutation]);
    return  _cart.items.isEmpty?"nothing to show".text.xl.makeCentered(): ListView.builder(
      itemCount: _cart.items?.length,
        itemBuilder: (context,index)=>ListTile(
          leading: Icon(Icons.circle),
          trailing: IconButton(
            icon: Icon(Icons.remove_circle_outline),
            onPressed: (){
              RemoveMutation(_cart.items[index]);
            },
          ),
          title: _cart.items[index].name.text.make(),
        )
    );
  }
}

class cartTotal extends StatelessWidget {
  cartTotal({Key? key}) : super(key: key);
  final CartModel _cart=(VxState.store as Mystore).cart;
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         VxConsumer(
           notifications: {},
           mutations: {RemoveMutation},
           builder: (context,_){
          return "\$${_cart.totalPrice}".text.make();
          },),
          ElevatedButton(
              onPressed: (){},
              child: "buy".text.xl.make())
        ],
      ),
    );
  }
}
