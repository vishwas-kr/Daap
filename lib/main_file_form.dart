import 'package:flutter/material.dart';

import 'surplus_food_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Surplus Food App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SurplusFoodScreen(),
    );
  }
}
