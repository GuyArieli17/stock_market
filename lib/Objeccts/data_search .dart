// import 'package:flutter/material.dart';
// import 'package:stock_market/Objeccts/stock.dart';

// class DataSearch extends SearchDelegate<String> {
//   Future<List<Stock>> items = loadStocks();

//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () {
//           query = "";
//         },
//       )
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: AnimatedIcon(
//         icon: AnimatedIcons.menu_arrow,
//         progress: transitionAnimation,
//       ),
//       onPressed: () {
//         close(context, null);
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     return null;
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     return new FutureBuilder<List<Stock>>(
//       future: loadStocks(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return new ListView.builder(
//             itemCount: snapshot.data.length,
//             itemBuilder: (context, index) {
//               if (query.length > 3 &&
//                   snapshot.data[index].nameOfCompany
//                       .toLowerCase()
//                       .startsWith(query.toLowerCase())) {
//                 return FlatButton(
//                   child: new ListTile(
//                     title: Text(snapshot.data[index].nameOfCompany),
//                     leading: Icon(Icons.location_city),
//                   ),
//                   onPressed: () {
//                     favs.add(snapshot.data[index]);
//                     addStockToDb(snapshot.data[index]);
//                     close(context, null);
//                   },
//                 );
//               } else {
//                 return Column();
//               }
//             },
//           );
//         } else if (snapshot.hasError) {
//           return new Text("Snapshot Error");
//         } else {
//           return Center(child: Text("Loading"));
//         }
//       },
//     );
//   }
// }
