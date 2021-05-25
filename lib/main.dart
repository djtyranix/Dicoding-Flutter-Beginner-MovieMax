import 'package:flutter/material.dart';
import 'package:moviemax_flutter/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Max',
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}
