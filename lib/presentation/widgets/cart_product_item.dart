import 'package:admart/presentation/utility/app_colors.dart';
import 'package:admart/presentation/utility/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

class CartProductItem extends StatefulWidget {
  const CartProductItem({super.key});

  @override
  State<CartProductItem> createState() => _CartProductItemState();
}

class _CartProductItemState extends State<CartProductItem> {
  int _counterValue = 1;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          _buildProductImage(),
          Expanded(
            child: _buildProductDetails(),
          )
        ],
      ),
    );
  }

  Padding _buildProductDetails() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [_buildProductName(), _buildColorAndSize()],
                ),
              ),
              IconButton(
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.all(0),
                  onPressed: () {},
                  icon: const Icon(Icons.delete_outline)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '\$100',
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600),
              ),
              _buildCounter(),
            ],
          ),
        ],
      ),
    );
  }

  Wrap _buildColorAndSize() {
    return const Wrap(
      spacing: 8,
      children: [
        Text(
          'Color: Red,',
          style: TextStyle(color: Colors.black45),
        ),
        Text(
          'Size: X',
          style: TextStyle(color: Colors.black45),
        ),
      ],
    );
  }

  Widget _buildCounter() {
    return ItemCount(
      initialValue: _counterValue,
      minValue: 1,
      maxValue: 20,
      decimalPlaces: 0,
      color: AppColors.primaryColor,
      onChanged: (value) {
        setState(() {
          _counterValue = value as int;
        });
      },
    );
  }

  Text _buildProductName() {
    return Text(
      'Nike shoe 213kst2354',
      maxLines: 1,
      style: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildProductImage() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        AssetsPath.productPicturePng,
        width: 100,
      ),
    );
  }
}
