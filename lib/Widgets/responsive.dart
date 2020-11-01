import 'package:flutter/material.dart';
import 'package:stock_market/Pages/home_page.dart';

class Responsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
