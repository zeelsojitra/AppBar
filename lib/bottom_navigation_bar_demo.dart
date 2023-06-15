import 'package:flutter/material.dart';

class bottom_navigation extends StatefulWidget {
  const bottom_navigation({Key? key}) : super(key: key);

  @override
  State<bottom_navigation> createState() => _bottom_navigationState();
}

class _bottom_navigationState extends State<bottom_navigation> {
  var selected = 0;
  List<Widget> widgetArray = [
    Text('hi this is a home'),
    Text('hi this is a setting'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.build),
          ),
        ],
      ),
      body: Center(
        child: widgetArray[selected],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          // BottomNavigationBarItem(
          //     icon: Icon(
          //       Icons.home_filled,
          //     ),
          //     label: Text(
          //       'Home',
          //     )),
          // BottomNavigationBarItem(
          //     icon: Icon(
          //       Icons.search,
          //     ),
          //     title: Text(
          //       'search',
          //     )),
        ],
        onTap: tapbar,
        currentIndex: selected,
      ),
    );
  }

  void tapbar(int integer) {
    setState(() {
      selected = integer;
    });
  }
}
