import 'package:flutter/material.dart';
import 'package:baca_kuy/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Colors.white),
      home: HomePage(),
    );
  }
}
