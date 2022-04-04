import 'package:ebuy/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class EBuyImage extends StatelessWidget {
  final String image;

  const EBuyImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .color(MyTheme.creamColor)
        .make()
        .p12()
        .w40(context)
        .h40(context);
  }
}
