import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/fooditem.dart';
import '../model/ingredientitemmodel.dart';
import '../views/foodview/FoodDetailsPage.dart';

class today_famus extends StatefulWidget {
  const today_famus({Key? key}) : super(key: key);

  @override
  State<today_famus> createState() => _today_famusState();
}

class _today_famusState extends State<today_famus> {
  @override
  Widget build(BuildContext context) {
    List<fooditem> data = [  fooditem(
        itemname: 'itemname',
        itemprise: 200,
        imageurl: 'assets/images/menu/pizza.png',
        tage: 'tage',
        DeliveryTime: '30 minutes',
        ingredient_used: [
          ingredientitem('Cheez', 'assets/images/food_items/cheez.png'),
          ingredientitem('Cheez', 'assets/images/food_items/cheez.png'),
        ],
        size: 'large'),
    ];
    return Container(
      width: Get.size.width,
      height: 400,
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.fromLTRB(16, 11, 26, 0),
              child: Stack(children: [
                Card(
                  elevation: 10,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.to(() => Fooddetailspage());
                    },
                    splashColor: Get.theme.primaryColor,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                      child: Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            ListTile(
                              title: Text(
                                '${data[index].itemname}',
                                style: TextStyle(
                                    // color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21),
                              ),
                              subtitle: Text('${data[index].tage}'),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Get.theme.primaryColor,
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(12),
                                      topRight: Radius.circular(20.0))),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 10),
                                child: Text("Rs ${data[index].itemprise}"),
                              ),
                            )
                          ])),
                    ),
                  ),
                ),
                Positioned(
                    right: 33,
                    bottom: 1,
                    top: 1,
                    child: Image.asset(
                      '${data[index].imageurl}',
                      height: 90,
                      width: 90,
                    ))
              ]),
            );
          }),
    );
  }
}
