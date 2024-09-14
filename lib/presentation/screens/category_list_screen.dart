import 'package:admart/presentation/state_holder/main_bottom_nav_bar_controller.dart';
import 'package:admart/presentation/utility/app_colors.dart';
import 'package:admart/presentation/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (_){
        Get.find<MainBottomNavBarController>().backToHome();
      },
      child: Scaffold(
        backgroundColor: AppColors.appBackGroundColor,
        appBar: AppBar(
          title: const Text('Categories'),
          leading: IconButton(onPressed: (){
            Get.find<MainBottomNavBarController>().backToHome();
          }, icon: Icon(Icons.arrow_back_ios_sharp),),
        ),
        body: GridView.builder(
          itemCount: 15,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, childAspectRatio: 0.75),
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(10.0),
              child: FittedBox(child: CategoryItem()),
            );
          },
        ),
      ),
    );
  }
}
