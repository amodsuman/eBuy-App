import 'package:ebuy/core/store.dart';
import 'package:ebuy/models/cart.dart';
import 'package:ebuy/models/ebuy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item eBuy;

  AddToCart({
    Key? key,
    required this.eBuy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(eBuy) ?? false;
    return ElevatedButton(
        onPressed: () {
          if (!isInCart) {
            AddMutation(eBuy);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: "Already added to cart.".text.make()));
          }
        },
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(context.theme.buttonColor),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            )),
        child:
            isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus));
  }
}
