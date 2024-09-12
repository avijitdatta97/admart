import 'package:flutter/material.dart';

class MainButtomNavBarScreen extends StatefulWidget {
  const MainButtomNavBarScreen({super.key});

  @override
  State<MainButtomNavBarScreen> createState() => _MainButtomNavBarScreenState();
}

class _MainButtomNavBarScreenState extends State<MainButtomNavBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
      ),
    );
  }
}
