import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavBar extends StatelessWidget {

  final void Function(int)? onTabChange;
  const MyNavBar({super.key, required this.onTabChange,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 22),
      child: GNav(
        color: Colors.grey.shade500,
        activeColor: Colors.grey.shade800,
        tabBackgroundColor: Colors.grey.shade200,
        tabActiveBorder: Border.all(color: Colors.grey.shade100),
        tabBorderRadius: 20,
        mainAxisAlignment: MainAxisAlignment.center,
        duration: Duration(milliseconds: 200),
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_cart_rounded,
            text: 'Cart',
          ),
        ]
      ),
    );
  }
}