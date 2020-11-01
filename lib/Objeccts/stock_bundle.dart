import 'stock.dart';

class StockBundle {
  final List<Stock> stocks;
  StockBundle({this.stocks});

  factory StockBundle.fromJson(List<dynamic> parsedJson) {
    List<Stock> stocks = new List<Stock>();

    stocks = parsedJson.map((i) => Stock.fromJson(i)).toList();

    return new StockBundle(stocks: stocks);
  }
}
