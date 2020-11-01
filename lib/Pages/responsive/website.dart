import 'package:flutter/material.dart';
import 'package:stock_market/Objeccts/stock.dart';
import 'package:stock_market/Pages/Sections/article.dart';
import 'package:stock_market/Pages/Sections/graph.dart';
import 'package:stock_market/Pages/Sections/search_bar.dart';
import 'package:stock_market/Pages/Sections/stock_list.dart';
import 'package:stock_market/Pages/Sections/top_stock.dart';

class Website extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double leftSize = screenWidth / 3;
    double rightSize = screenWidth - leftSize;

    return Row(
      children: <Widget>[
        SizedBox(
          width: leftSize,
          height: screenHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: screenHeight / 5,
                child: Column(
                  children: [Text('MarketPlace'), Text('30 Jan')],
                ),
              ),
              SizedBox(child: TopStock(), height: screenHeight / 5),
              SizedBox(child: SearchBar(), height: screenHeight / 5),
              SizedBox(child: StockList(), height: screenHeight / 5),
            ],
          ),
        ),
        SizedBox(
          width: rightSize,
          child: Stack(
            children: <Widget>[
              Article(),
              Graph(),
            ],
          ),
        )
      ],
    );
  }
}
