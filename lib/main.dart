import 'package:digitalorderingsystem/constant.dart';
import 'package:digitalorderingsystem/controller/maincontroller.dart';
import 'package:digitalorderingsystem/views/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    // pass the starting widget (stateless or stateful widget)
    MyApp()
    );
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // starting the app with materialapp to set its theme and for routing
      final maincontroller mainController= Get.put(maincontroller());
    Constants _constants = Constants();
      // mainController.crt_total_count.obs;
        return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _constants.Apptheme,
      darkTheme: _constants.appdarktheme,
      themeMode: ThemeMode.system,
      home: Home(),
    );
  }
}           