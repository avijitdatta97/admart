import 'package:admart/presentation/state_holder/main_bottom_nav_bar_controller.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(MainBottomNavBarController());
  }

}