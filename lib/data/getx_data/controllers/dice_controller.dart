import 'package:dice_app/data/repozitories/math_repozitory.dart';
import 'package:get/get.dart';

class DiceController extends GetxController {
  RxInt leftNumber = 1.obs;
  RxInt rightNumber = 4.obs;

  void getRandomNumber() {
    leftNumber.value = MathRepozitory.getRandomNumber();
    rightNumber.value = MathRepozitory.getRandomNumber();
  }
}
