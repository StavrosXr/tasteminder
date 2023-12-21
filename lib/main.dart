import 'package:flutter/material.dart';
import 'navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TasteMinder',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: NavBar(),
    );
  }
}
