import 'package:admart/presentation/utility/app_colors.dart';
import 'package:admart/presentation/utility/assets_path.dart';
import 'package:admart/presentation/widgets/home_carousel_slider.dart';
import 'package:admart/presentation/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/app_bar_icon_menu.dart';
import '../widgets/category_item.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackGroundColor,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              _buildSearchTextField(),
              const SizedBox(
                height: 16,
              ),
              const HomeCarouselSliderState(),
              const SizedBox(
                height: 16,
              ),
              SectionHeader(
                title: 'All Category',
                onTabSeeAll: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              _buildCategoryListView(),
              SectionHeader(
                title: 'Popular',
                onTabSeeAll: () {},
              ),
              const SizedBox(height: 10,),
              _buildProductListView(),

              const SizedBox(height: 10,),
              SectionHeader(
                title: 'Special',
                onTabSeeAll: () {},
              ),
              const SizedBox(height: 10,),
              _buildProductListView(),

              const SizedBox(height: 10,),
              SectionHeader(
                title: 'New',
                onTabSeeAll: () {},
              ),
              const SizedBox(height: 10,),
              _buildProductListView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryListView() {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return const CategoryItem();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 16,
          );
        },
      ),
    );
  }

  Widget _buildProductListView() {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return const ProductCard();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 16,
          );
        },
      ),
    );
  }

  Widget _buildSearchTextField() {
    return TextField(
      controller: _searchTEController,
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: const Icon(Icons.search),
        fillColor: Colors.grey.shade200,
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.appNevLogoSvg),
      actions: [
        AppBarIconMenu(iconData: Icons.person_outline, onTab: () {}),
        const SizedBox(
          width: 8,
        ),
        AppBarIconMenu(iconData: Icons.call_outlined, onTab: () {}),
        const SizedBox(
          width: 8,
        ),
        AppBarIconMenu(
            iconData: Icons.notifications_active_outlined, onTab: () {}),
        const SizedBox(
          width: 18,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _searchTEController.dispose();
    super.dispose();
  }
}


