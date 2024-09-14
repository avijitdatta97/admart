import 'package:flutter/material.dart';

class AppBarIconMenu extends StatelessWidget {
  const AppBarIconMenu({
    super.key, required this.iconData, required this.onTab,
  });

  final IconData iconData;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      borderRadius: BorderRadius.circular(80),
      child: CircleAvatar(
        radius: 18,
        backgroundColor: Colors.grey.shade200,
        child: Icon(iconData, color: Colors.grey, size: 20,),
      ),
    );
  }
}
