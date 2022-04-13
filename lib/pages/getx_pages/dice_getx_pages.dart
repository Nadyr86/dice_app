import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/constants/text_styles/text_styles.dart';
import 'package:dice_app/data/getx_data/controllers/dice_controller.dart';
import 'package:dice_app/widgets/dice_page_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiceGetxPages extends StatelessWidget {
  DiceGetxPages({Key key}) : super(key: key);

  final DiceController _diceController = Get.put(DiceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Dice GetX App',
          style: TextStyles.appBarrTitle,
        ),
      ),
      body: Obx(
        () {
          return DicePageContent(
            onTap: () => _diceController.getRandomNumber(),
            leftNumber: _diceController.leftNumber.value,
            rightNumber: _diceController.rightNumber.value,
          );
        },
      ),
    );
  }
}
