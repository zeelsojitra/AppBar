import 'package:flutter/material.dart';

class app_bar extends StatefulWidget {
  const app_bar({Key? key}) : super(key: key);

  @override
  State<app_bar> createState() => _app_barState();
}

class _app_barState extends State<app_bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Music'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded),
          ),
        ],
      ),
    );
  }
}
