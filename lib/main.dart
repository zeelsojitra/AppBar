import 'package:flutter/material.dart';

import 'appbar.dart';
import 'bottom_navigation_bar.dart';
import 'bottom_navigation_bar_demo.dart';
import 'darwer.dart';
import 'darwer_demo.dart';
import 'demo1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: bottom_navigationbarr(),
      debugShowCheckedModeBanner: false,
    );
  }
}
