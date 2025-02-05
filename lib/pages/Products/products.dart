import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/helpers/reponsiveness.dart';
import 'package:flutter_web_dashboard/pages/Products/widgets/products_table.dart';
import 'package:flutter_web_dashboard/pages/Products/widgets/productview.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
         return Container(
                child: Column(
                children: [
                  SizedBox(height: 10),
                 Obx(() => Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top:
                        ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                        child: CustomText(text: menuController.activeItem.value, size: 24, weight: FontWeight.bold,)),

                    ],
                  ),),

                  Expanded(child: ListView(
                    children: [
                      ProductView(),
                    ],
                  )),

                  ],
                ),
              );
  }
}