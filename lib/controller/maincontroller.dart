import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../model/fooditem.dart';
import '../model/ingredientitemmodel.dart';

class maincontroller extends GetxController {
  bool theme = Get.isDarkMode ? false : true;
  changtheme(bool value) {
    theme = value;
  }

  crt_total_count() {
    return cartfinalitems.length;
  }

  RxList cartfinalitems = [].obs;

  void add_a_new_item_cartfinalitems(
      var itemname, int itemprise, var imageurl, var tage) {
    cartfinalitems.add(
      fooditem(
          itemname: itemname,
          itemprise: itemprise,
          imageurl: 'assets/images/menu/pizza.png',
          tage: tage,
          DeliveryTime: '30 minutes',
          ingredient_used: [
            ingredientitem('Cheez', 'assets/images/food_items/cheez.png'),
            ingredientitem('Cheez', 'assets/images/food_items/cheez.png'),
          ],
          size: 'large'),
    );
  }
}
