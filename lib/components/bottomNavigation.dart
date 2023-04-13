import 'package:flutter/material.dart';

Widget bottomNavigationBar(String page) {
  return  Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -3),
              color: Colors.black.withOpacity(0.25),
              blurRadius: 10)
        ],
        color: Colors.white,
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavIcon(iconData: Icons.home_filled, active: page == "home" ),
          buildNavIcon(iconData: Icons.search, active: page == "search"),
          buildNavIcon(iconData: Icons.shopping_bag, active: page == "card"),
          buildNavIcon(iconData: Icons.person, active: page == "profile"),
        ],
      ),
    ),
  );
}
Widget buildNavIcon({required IconData iconData, required bool active}) {
  return Icon(iconData, size: 20, color: active ? Colors.orange : Colors.black);
}