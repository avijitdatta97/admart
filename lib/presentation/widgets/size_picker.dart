import 'package:admart/presentation/utility/app_colors.dart';
import 'package:flutter/material.dart';

class SizePicker extends StatefulWidget {
  const SizePicker({super.key, required this.onChange, required this.sizes});

  final List<String> sizes;
  final Function(String) onChange;

  @override
  State<SizePicker> createState() => _SizePickerState();
}

class _SizePickerState extends State<SizePicker> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.sizes.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              selectedIndex = index;
              setState(() {});
              widget.onChange(widget.sizes[index]);
            },
            child: Container(
                width: 30,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? AppColors.primaryColor
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                      color: selectedIndex == index
                          ? AppColors.primaryColor
                          : Colors.black),
                ),
                child: Text(
                  widget.sizes[index],
                  style: TextStyle(
                    fontSize: 12,
                    color: selectedIndex == index
                        ? Colors.white
                        : Colors.black,
                  ),
                )),
          );
        },
      ),
    );
  }
}
