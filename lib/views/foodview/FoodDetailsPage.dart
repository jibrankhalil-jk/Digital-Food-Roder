import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/maincontroller.dart';
import '../../model/fooditem.dart';
import '../../widgets/carticon.dart';
import '../../widgets/ingreedientsitem.dart';
import 'cart.dart';

class Fooddetailspage extends StatefulWidget {
   Fooddetailspage({Key? key,  this.fooditems}) : super(key: key);
    var fooditems;  @override

  // ignore: unnecessary_this
  _FooddetailspageState createState() => _FooddetailspageState(fooditem: fooditems);
}

class _FooddetailspageState extends State<Fooddetailspage> {
      _FooddetailspageState({ required this.fooditem});
      var fooditem;  
      @override

    final maincontroller mainController = Get.find<maincontroller>();
  Widget build(BuildContext context) {
    var fontstyle = TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
          decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Get.isDarkMode?Colors.white :Colors.black,
              ),
              borderRadius: BorderRadius.circular(12.0)),
          child: InkWell(
              splashColor: Get.theme.primaryColor,
              borderRadius: BorderRadius.circular(12.0),
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Get.isDarkMode?Colors.white :Colors.black,
              )),
        ),
        actions: [
         CartIcon(), SizedBox(
            width: 10,
          )
        ],
    
      ),
      body: Stack(fit: StackFit.expand, children: [
        Container(
          child: Positioned(
            right: 22,
            // bottom: Get.size.height / 3,
            top: 1,
            bottom: 100,
            child: Image.asset(
              'assets/images/menu/pizza.png',
              height: 180,
              width: 180,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(
                    21,
                    0,
                    0,
                    20,
                  ),
                  child: Text(
                    'Primevera \nPizza',
                    style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(
                  31,
                  0,
                  0,
                  40,
                ),
                child: Text(
                  'Rs 130',
                  style: TextStyle(
                      fontSize: 21,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  31,
                  0,
                  0,
                  0,
                ),
                child: Text(
                  'Size',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  31,
                  0,
                  0,
                  20,
                ),
                child: Text(
                  "Medium 14' ",
                  style: fontstyle,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  31,
                  0,
                  0,
                  0,
                ),
                child: Text(
                  'Crust',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  31,
                  0,
                  0,
                  20,
                ),
                child: Text(
                  "Thin Crust",
                  style: fontstyle,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  31,
                  0,
                  0,
                  0,
                ),
                child: Text(
                  'Delivey Time',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  31,
                  0,
                  0,
                  50,
                ),
                child: Text(
                  "30 minutes ",
                  style: fontstyle,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  31,
                  0,
                  0,
                  10,
                ),
                child: Text(
                  "Ingredients ",
                  style: fontstyle,
                ),
              ),
              Ingredientitem(),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
        Container(
          child: Positioned(
              right: 2,
              left: 2,
              // bottom: Get.size.hei
              bottom: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22),
                          topRight: Radius.circular(22))),
                  onPressed: () {
mainController.add_a_new_item_cartfinalitems('piza', 100, 'imageurl', 'tage');
                     Get.to(()=> Cart());
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: const Text(
                      "Place an order",
                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ),
                  color: Get.theme.primaryColor,
                ),
              )),
        ),
      ]),
    );
  }
}
