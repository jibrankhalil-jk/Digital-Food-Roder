import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/maincontroller.dart';
import '../../widgets/cartitems.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override

    final maincontroller mainController = Get.find<maincontroller>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Cart',
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
          child: InkWell(
              splashColor: Get.theme.primaryColor,
              borderRadius: BorderRadius.circular(12.0),
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              )),
        ),
        actions: [],
      ),
      body: Stack(fit: StackFit.expand, children: [
        Column(children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 21),
            height: Get.size.height / 2,
            width: Get.size.width,
            child: CartItem(),
          ),
          
          Container(
            margin: EdgeInsets.symmetric(horizontal: Get.size.width / 6),
            child: Card(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '     Discouts',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text('Rs 0     '),
                    ],
                  ),
                  SizedBox(height: 5,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '     Total Bil',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text('RS 1200     '),
                    ],
                  ),
                ],
              ),
            )),
          ),
        ]),
        Positioned(
            right: Get.size.width / 6,
            left: Get.size.width / 6,
            bottom: 30,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(77))),
              onPressed: () {
                Get.to(() => Cart());
              },
              color: Get.theme.primaryColor,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  child: Text(
                    "Finalize order",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
      ]),
    );
  }
}
