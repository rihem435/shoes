import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
      BottomNavigationBarItem(
        icon: Image.asset("assets/images/home.png"),
        label: "Home",
      ),
      BottomNavigationBarItem(
          icon: Image.asset("assets/images/cart.png"), label: "Cart"),
      BottomNavigationBarItem(
          icon: Image.asset("assets/images/orders.png"), label: "Orders"),
      BottomNavigationBarItem(
          icon: Image.asset("assets/images/profile.png"), label: "Profile")
    ]);
  }
}
