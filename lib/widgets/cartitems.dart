import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:get/get.dart';

import '../controller/maincontroller.dart';
import '../model/fooditem.dart';

class CartItem extends StatefulWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {

    final maincontroller mainController = Get.find<maincontroller>();
  
   
    return ListView.builder(itemCount: mainController.cartfinalitems.length,itemBuilder: (context, index) {
      return Container(
        child: Container(
          margin: EdgeInsets.all(5),
          child: Card(elevation: 10,
            child: SwipeActionCell(
              key: ObjectKey(mainController.cartfinalitems[index]),
              trailingActions: <SwipeAction>[
                SwipeAction(
                    performsFirstActionWithFullSwipe: true,
                    onTap: (CompletionHandler handler) async {
                        mainController.cartfinalitems.removeAt(index);
                        setState(() {});
                    },
                    color: Colors.red,
                    icon: Icon(Icons.delete)),
              ],
              child: ListTile(
                leading: Image.asset(
                    '${mainController.cartfinalitems[index].imageurl}'),
                title: Text(
                    '${mainController.cartfinalitems[index].itemname}'),
                subtitle: Text(
                    '${mainController.cartfinalitems[index].itemprise}'),
                trailing: Container(
                  width: 80,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Get.theme.primaryColor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(7.0))),
                            width: 23,
                            height: 23,
                            child: Center(
                                child: InkWell(
                                    onTap: () {
                                      Get.snackbar('title', 'added');
                                    },
                                    child: Icon(Icons.add)))),
                        Text(
                          "01",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Get.theme.primaryColor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(7.0))),
                            width: 23,
                            height: 23,
                            child: Center(
                                child: InkWell(
                                    onTap: () {
                                      Get.snackbar('title', 'Removed');
                                    },
                                    child: Icon(Icons.remove)))),
                      ]),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}



/*

 
*/