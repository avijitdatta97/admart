import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../utility/app_colors.dart';

class HomeCarouselSliderState extends StatefulWidget {
  const HomeCarouselSliderState({
    super.key,
  });

  @override
  State<HomeCarouselSliderState> createState() =>
      _HomeCarouselSliderStateState();
}

class _HomeCarouselSliderStateState extends State<HomeCarouselSliderState> {
  final ValueNotifier<int> _selectedPageIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCarouselSlider(),
        const SizedBox(
          height: 8,
        ),
        buildDotIndicator(),
      ],
    );
  }

  ValueListenableBuilder<Object> buildDotIndicator() {
    return ValueListenableBuilder<Object>(
          valueListenable: _selectedPageIndex,
          builder: (context, currentPager, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < 5; i++)
                  Container(
                    height: 15,
                    width: 15,
                    margin: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color:
                      i == currentPager ? AppColors.primaryColor : null,
                      border: Border.all(
                          color: i == currentPager
                              ? AppColors.primaryColor
                              : Colors.grey,
                          width: 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
              ],
            );
          });
  }

  CarouselSlider _buildCarouselSlider() {
    return CarouselSlider(
        options: CarouselOptions(
          height: 150.0,
          autoPlay: true,
          onPageChanged: (index, _) {
            _selectedPageIndex.value = index;
          },
        ),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(8)),
                  alignment: Alignment.center,
                  child: Text(
                    'text $i',
                    style: const TextStyle(fontSize: 16.0),
                  ));
            },
          );
        }).toList(),
      );
  }
}