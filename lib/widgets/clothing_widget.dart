// import 'package:RTW/models/product.dart';
// import 'package:expandable/expandable.dart';
// import 'package:flutter/material.dart';

// class ClothingWidget extends StatefulWidget {
//   @override
//   _ClothingState createState() => _ClothingState();
// }

// class _ClothingState extends State<ClothingWidget> {
//   ClothingWidget _selectedClothing;

//   ExpandableController _clothingExpandableController = ExpandableController();
//   @override
//   void initState() {
//     super.initState();
//   }

//   get _clothingWidget {
//     return GestureDetector(
//       child: Container(
//         width: double.infinity,
//         height: 150,
//         color: Colors.grey[300],
//         child: Center(
//           child: Text(
//             'CLOTHING',
//             style: TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//       onTap: () {
//         _clothingExpandableController.toggle();
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ExpandablePanel(
//           controller: _clothingExpandableController,
//           collapsed: _clothingWidget,
//           expanded: Column(mainAxisSize: MainAxisSize.min, children: [
//             _clothingWidget,
//           ]),
//           tapBodyToCollapse: true,
//           tapHeaderToExpand: false,
//         ),
//       ],
//     );
//   }
// }
