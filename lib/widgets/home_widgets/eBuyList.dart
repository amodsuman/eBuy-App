import 'package:ebuy/models/ebuy.dart';
import 'package:ebuy/screens/product_detail_page.dart';
import 'package:ebuy/widgets/home_widgets/eBuyImage.dart';
import 'package:ebuy/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class EBuyList extends StatelessWidget {
  const EBuyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: EBuyModel.items.length,
      itemBuilder: (context, index) {
        final eBuy = EBuyModel.items[index];
        return InkWell(
          child: EBuyItem(eBuy: eBuy),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailPage(eBuy: eBuy),
            ),
          ),
        );
      },
    );
  }
}

class EBuyItem extends StatelessWidget {
  final Item eBuy;

  const EBuyItem({Key? key, required this.eBuy})
      : assert(eBuy != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(eBuy.id.toString()),
            child: EBuyImage(
              image: eBuy.image,
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              eBuy.name.text.lg.color(context.accentColor).bold.make(),
              eBuy.desc.text.color(Colors.grey).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${eBuy.price}".text.bold.xl.make(),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              context.theme.buttonColor),
                          shape: MaterialStateProperty.all(
                            StadiumBorder(),
                          )),
                      child: "Add to Cart".text.make())
                ],
              ).pOnly(right: 10.0)
            ],
          ))
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py8();
  }
}
