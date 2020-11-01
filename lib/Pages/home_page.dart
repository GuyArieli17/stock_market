import 'package:flutter/material.dart';
import 'package:stock_market/Pages/responsive/website.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        // if (constraint.maxWidth > 1200) {
        //   return Website();
        // }idgets
        return Website();
      },
    );
  }
}
