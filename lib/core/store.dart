import 'package:untitled/models/cartmodel.dart';
import 'package:untitled/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class Mystore extends VxStore{
late Model catalog;
late CartModel cart;

Mystore(){
  catalog=Model();
  cart=CartModel();
  cart.catalog=catalog;
}
}