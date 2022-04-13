import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/widgets/dice_widgets.dart';
import 'package:flutter/material.dart';

class DicePageContent extends StatelessWidget {
  final GestureTapCallback onTap;
  final int leftNumber;
  final int rightNumber;
  const DicePageContent(
      {@required this.onTap,
      @required this.leftNumber,
      @required this.rightNumber,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        splashColor: AppColors.amberAccent,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              DiceWidgets(diceNumber: leftNumber),
              SizedBox(
                width: 10,
              ),
              DiceWidgets(diceNumber: rightNumber),
            ],
          ),
        ),
      ),
    );
  }
}
