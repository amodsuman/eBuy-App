import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class EBuyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "eBuy App".text.xl5.bold.color(context.theme.accentColor).make(),
        "Top Selling Products"
            .text
            .bold
            .xl2
            .color(context.theme.secondaryHeaderColor)
            .make(),
      ],
    );
  }
}
