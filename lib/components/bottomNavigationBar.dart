import "package:flutter/material.dart";
import "package:google_nav_bar/google_nav_bar.dart";

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
        onTabChange: (value) => onTabChange!(value),
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.black,
        color: Colors.grey.shade600,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade400,
        gap: 3,
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
            textStyle: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: "Cart",
            textStyle: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          )
        ]);
  }
}
