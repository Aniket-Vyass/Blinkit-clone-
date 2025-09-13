// ignore_for_file: unused_import

import 'package:blinkit_clone_app/repository/print/printscreen.dart';
import 'package:blinkit_clone_app/repository/screens/cart/cartscreen.dart';
import 'package:blinkit_clone_app/repository/screens/category/categoryscreen.dart';
import 'package:blinkit_clone_app/repository/screens/category/mycategory.dart';
import 'package:blinkit_clone_app/repository/screens/home/homescreen.dart';
import 'package:blinkit_clone_app/repository/uihelper.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    Mycategory(),
    Printscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded),
            label: "Categories",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.print), label: "Print"),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
