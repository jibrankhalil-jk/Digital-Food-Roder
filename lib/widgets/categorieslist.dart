import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../model/categoriesmodel.dart';

class categories extends StatefulWidget {
  const categories({Key? key}) : super(key: key);

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  @override
  Widget build(BuildContext context) {
    List<categoriesmodel> data = [
      categoriesmodel('Cake', 'cake.png'),
      categoriesmodel('Chowmin', 'chowmin.png'),
      categoriesmodel('Ice cream', 'ice_cream.png'),
      categoriesmodel('Pizza', 'pizza.svg'),
      categoriesmodel('Drinks', 'coke.svg'),
      categoriesmodel('Salad', 'salad.png'),
      categoriesmodel('Sea Food', 'sea-food.svg'),
    ];
    Widget out_icon(String dta) {
      if (dta.endsWith('svg') == true) {
        return SvgPicture.asset(
          "assets/images/menu/$dta",
          width: 84,
          height: 84,
        );
      }
       else {
        return Image.asset(
          "assets/images/menu/$dta",
          width: 94,
          height: 94,
        );
      }
    }

    return Container(
      width: Get.size.width,
      height: 220,
      child: ListView.builder(
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
                child: Card(

                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(23.0),
                      ),
                    ),
                    child: InkWell(
                      onTap: (){},
                      splashColor: Get.theme.primaryColor,
                      borderRadius: BorderRadius.circular(23),
                      child: Container(
                        width: 110,
                        height: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            out_icon(data[index].imageurl),
                            Text("${data[index].name}",
                                style: TextStyle(
                                    // color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          );
        },
      ),
    );
  }
}
