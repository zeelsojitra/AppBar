import 'package:flutter/material.dart';

import 'bottom_navigation_bar_demo.dart';
import 'darwer.dart';
import 'darwer_demo.dart';

class demo1 extends StatefulWidget {
  const demo1({Key? key}) : super(key: key);

  @override
  State<demo1> createState() => _demo1State();
}

class _demo1State extends State<demo1> {
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart), label: "Shopping"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        elevation: 10,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
