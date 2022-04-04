import 'package:ebuy/models/ebuy.dart';
import 'package:ebuy/utilities/routes.dart';
import 'package:ebuy/widgets/home_widgets/eBuyHeader.dart';
import 'package:ebuy/widgets/home_widgets/eBuyList.dart';
import 'package:ebuy/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.cartRoute);
        },
        backgroundColor: MyTheme.darkBluish,
        child: Icon(CupertinoIcons.cart),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.mH20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EBuyHeader(),
              if (EBuyModel.items != null && EBuyModel.items.isNotEmpty)
                EBuyList().py12().expand()
              else
                CircularProgressIndicator().centered().py16().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
