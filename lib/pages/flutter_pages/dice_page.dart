import 'package:dice_app/constants/text_styles/text_styles.dart';
import 'package:dice_app/data/repozitories/math_repozitory.dart';
import 'package:dice_app/widgets/dice_page_content.dart';

import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _leftNumber = 1;
  int _rightNumber = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Dice App',
          style: TextStyles.appBarrTitle,
        ),
      ),
      body: DicePageContent(
        onTap: _getRandomNumber,
        leftNumber: _leftNumber,
        rightNumber: _rightNumber,
      ),
    );
  }

  void _getRandomNumber() {
    _leftNumber = MathRepozitory.getRandomNumber();
    _rightNumber = MathRepozitory.getRandomNumber();

    setState(() {});
  }
}
