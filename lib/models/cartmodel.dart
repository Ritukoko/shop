
import 'package:untitled/core/store.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:untitled/pages/homeWidgets/add_tocart.dart';

import 'catalog.dart';
class CartModel{

late Model _catalog;
final List<int> _itemIds=[];
Model get catalog=>_catalog;
set catalog(Model newCatalog){
assert(newCatalog!=null);
  _catalog=newCatalog;
}

List<Item> get items=> _itemIds.map((id)=> _catalog.getbyId(id)).toList();

num get totalPrice=>
    items.fold(0,(total,current)=> total+current.price);
}

class AddMutation extends VxMutation<Mystore>{
  late final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store.cart._itemIds.add(item.id);
  }

}
class RemoveMutation extends VxMutation<Mystore> {
  late final Item item;
  //static bool addedto= addtocart.added;
  RemoveMutation(this.item);

  @override
  perform() {
    store.cart._itemIds.remove(item.id);
    //addedto=false;
  }
}



