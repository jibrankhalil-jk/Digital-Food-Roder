import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/ingredientitemmodel.dart';

class Ingredientitem extends StatefulWidget {
  const Ingredientitem({Key? key}) : super(key: key);

  @override
  State<Ingredientitem> createState() => _IngredientitemState();
}

class _IngredientitemState extends State<Ingredientitem> {
  @override
  Widget build(BuildContext context) {

    List<ingredientitem> data = [
      ingredientitem('Cheez','assets/images/food_items/cheez.png'),
      ingredientitem('Chilli','assets/images/food_items/chilli.png'),
      ingredientitem('Pepper','assets/images/food_items/bp.png'),
    ];
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19),
      width: Get.size.width,
      height: 100,
      child: ListView.builder(
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, ind) {
          return Container(
            margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
            width: 80,
            child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          '${data[ind].imageurl}',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        '${data[ind].name}',
                          style: TextStyle(
                              // color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
