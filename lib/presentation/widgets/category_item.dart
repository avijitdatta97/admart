
import 'package:admart/presentation/screens/product_list_screen.dart';
import 'package:admart/presentation/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(() => ProductListScreen(categoryName: 'Electronics'));
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            child: Icon(
              Icons.desktop_mac_outlined,
              size: 36,
              color: AppColors.primaryColor,
            ),
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          SizedBox(height: 8,),
          Text(
            "Electronics",
            style: TextStyle(
                fontSize: 15,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.3),
          ),
        ],
      ),
    );
  }
}