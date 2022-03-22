import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/maincontroller.dart';
import '../views/foodview/cart.dart';

class CartIcon extends StatefulWidget {
  const CartIcon({ Key? key }) : super(key: key);

  @override
  State<CartIcon> createState() => _CartIconState();
}

class _CartIconState extends State<CartIcon> {
  @override

    final maincontroller mainController = Get.find<maincontroller>();
  Widget build(BuildContext context) {
    return  Stack(children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                  color: Get.theme.primaryColor,
                  borderRadius: BorderRadius.circular(12.0)),
              child: InkWell(
                  splashColor: Get.theme.primaryColor,
                  borderRadius: BorderRadius.circular(20.0),
                  onTap: () {
                    Get.to(() => Cart());
                    // Get.back();
                  },
                  child: Icon(
                    Icons.shopping_cart,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  )),
            ),
            Positioned(
                bottom: 4,
                left:0,
                child: CircleAvatar(
                  child:Obx(()=>Text(mainController.crt_total_count().toString())), 
                  // Text('${mainController.crt_total_count}',textScaleFactor: MediaQuery.textScaleFactorOf(context) - 0.4,),
                  radius: 9,
                  backgroundColor: Colors.red,
                ))
          ])
         ;
  }
}