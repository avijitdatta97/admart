import 'package:admart/presentation/screens/home_screen.dart';
import 'package:get/get.dart';

class MainBottomNavBarController extends GetxController{
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void changeIndex(int index){
    _selectedIndex = index;
    update();
  }

  void backToHome(){
    changeIndex(0);
  }
}