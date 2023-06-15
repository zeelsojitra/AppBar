import 'package:flutter/material.dart';

import 'bottom_navigation_bar_demo.dart';
import 'darwer.dart';
import 'darwer_demo.dart';

class bottom_navigationbarr extends StatefulWidget {
  const bottom_navigationbarr({Key? key}) : super(key: key);

  @override
  State<bottom_navigationbarr> createState() => _bottom_navigationbarrState();
}

class _bottom_navigationbarrState extends State<bottom_navigationbarr> {
  int selected = 0;
  List screens = [
    dawer(),
    demo(),
    bottom_navigation(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart), label: "Shopping"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
