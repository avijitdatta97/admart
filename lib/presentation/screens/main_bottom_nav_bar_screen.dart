import 'package:admart/presentation/screens/cart_list_screen.dart';
import 'package:admart/presentation/screens/category_list_screen.dart';
import 'package:admart/presentation/screens/home_screen.dart';
import 'package:admart/presentation/screens/wish_list_screen.dart';
import 'package:admart/presentation/state_holder/main_bottom_nav_bar_controller.dart';
import 'package:admart/presentation/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomNavBarScreen extends StatefulWidget {
  const MainBottomNavBarScreen({super.key});

  @override
  State<MainBottomNavBarScreen> createState() => _MainBottomNavBarScreenState();
}

class _MainBottomNavBarScreenState extends State<MainBottomNavBarScreen> {
  final MainBottomNavBarController _navBarController = Get.find<MainBottomNavBarController>();

  final List<Widget> _screens = const [
    HomeScreen(),
    CategoryListScreen(),
    CartListScreen(),
    WishListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GetBuilder<MainBottomNavBarController>(
        builder: (_) {
          return BottomNavigationBar(
            currentIndex: _navBarController.selectedIndex,
            onTap: (index){
              _navBarController.changeIndex(index);
            },
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined), label: 'Categories'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined), label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'Wish'),
            ],
          );
        }
      ),

      body: GetBuilder<MainBottomNavBarController>(
        builder: (_){
          return _screens[_navBarController.selectedIndex];
        },
      ),
    );
  }
}
