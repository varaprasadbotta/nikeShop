import 'package:flutter/material.dart';
import 'package:nikeshop/components/bottomNavigationBar.dart';
import 'package:nikeshop/pages/cart_page.dart';
import 'package:nikeshop/pages/shop_page.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
//function to switch between pages
  int _selectedIndex = 0;
  void changeNavigationPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//list of pages
  final List<Widget> _pages = [
    //shop page
    Shop_Page(),
    //cart page
    Cart_Page()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => changeNavigationPage(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
