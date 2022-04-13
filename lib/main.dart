import 'package:dice_app/pages/getx_pages/dice_getx_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dice App',
      debugShowCheckedModeBanner: false,
      home: DiceGetxPages(),
    );
  }
}
