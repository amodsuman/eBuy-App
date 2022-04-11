import 'package:ebuy/models/ebuy.dart';
import 'package:ebuy/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore{
  late EBuyModel eBuy;
  late CartModel cart;

  MyStore(){
    eBuy = EBuyModel();
    cart = CartModel();
    cart.eBuy = eBuy;
  }

}