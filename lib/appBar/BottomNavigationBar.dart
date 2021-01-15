import 'package:flutter/material.dart';
BottomNavigationBar buildBottomNavigationBar() {
  return BottomNavigationBar(
    iconSize: 26,
    selectedItemColor : Colors.red,
    unselectedItemColor: Colors.black38,
    showSelectedLabels: false,
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: ""
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.cast_for_education),
          label: ""
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.lightbulb),
          label: ""
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_circle),
          label: ""
      )
    ],
  );
}