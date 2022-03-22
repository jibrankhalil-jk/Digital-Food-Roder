import 'package:digitalorderingsystem/controller/maincontroller.dart';
import 'package:digitalorderingsystem/widgets/categorieslist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/parser.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../widgets/carticon.dart';
import '../widgets/today_famus.dart';
import 'foodview/cart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final maincontroller mainController = Get.find<maincontroller>();
    return Scaffold(
      appBar: AppBar(
        leading: Container(
            margin: EdgeInsets.fromLTRB(11, 2, 2, 2),
            child: CircleAvatar(
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            )), actions: [CartIcon(),
          SizedBox(
            width: 10,
          )
        ],
    
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 30,
          ),
          Container(
              margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
          SizedBox(
            height: 9,
          ),
          categories(),
          Container(
              margin: EdgeInsets.fromLTRB(17, 0, 0, 0),
              child: Text(
                'Latest',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
          today_famus(),
          SizedBox(height: 50,)
        ]),
      ),
      drawer: Drawer(child: CupertinoSwitch(
        value: mainController.theme,
        onChanged: (bool value) {
          mainController.changtheme(value);
          setState(() {
            Get.changeThemeMode(
                value == true ? ThemeMode.dark : ThemeMode.light);
          });
        },
      ),),
    );
  }
}
