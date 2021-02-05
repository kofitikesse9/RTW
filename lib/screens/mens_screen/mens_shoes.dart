// import 'package:RTW/models/product.dart';
// import 'package:RTW/widgets/product_item.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';



// class MensShoesScreen extends StatelessWidget {

//     final List<Product> dummyProducts = [
//     Product(
//       categoryId: '3',
//       name: 'boots',
//       description: 'Brown seude chukka boots',
//       price: 500.99,
//       imageUrl:
//           'https://www.carminashoemaker.com/cdnassets/chukka_carmina_10027_sadl-3.jpg',
//     ),
//     Product(
//       categoryId: '3',
//       name: 'Shoes',
//       description: 'Black oxfords',
//       price: 699.99,
//       imageUrl:
//           'https://www.carminashoemaker.com/cdnassets/black_calf_oxford_shoes_carmina_732_l.jpg',
//     ),
//     Product(
//       categoryId: '3',
//       name: 'loafers',
//       description: 'brown seude tassel loafers',
//       price: 450.99,
//       imageUrl:
//           'https://www.carminashoemaker.com/cdnassets/tassel_loafers_polo_suede_80367_l-2.jpg',
//     ),
//     Product(
//       categoryId: '3',
//       name: 'Sneakers',
//       description: 'White ankle sneakers.',
//       price: 240.99,
//       imageUrl:
//           'https://i.pinimg.com/originals/a9/ed/a3/a9eda301c11c35906c698d7570f8ac5e.png',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: 100,
//             width: double.infinity,
//             child: Padding(
//               padding: const EdgeInsets.only(
//                 top: 25.0,
//               ),
//               child: Row(
//                 children: [
//                   IconButton(
//                     icon: Icon(CupertinoIcons.chevron_left),
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                     },
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 100.0),
//                     child: Text(
//                       'SHOES',
//                       style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 50),
//           Container(
//             height: 1,
//             width: double.infinity,
//             color: Colors.grey,
//           ),
//                     Expanded(
//                       child: GridView.builder(
//               padding: const EdgeInsets.all(10.0),
//               itemBuilder: (ctx, i) => null,
              
//               itemCount: 0,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 childAspectRatio: 1.0,
//                 crossAxisCount: 1,
//                 mainAxisSpacing: 5,
//                 crossAxisSpacing: 5,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }






  // final List <Product> data = [];
  //               if(clothes.id == 1){
  //                 data.addAll(clothingProducts.where((clothes) => clothes.tags != null && clothes.tags.contains("polo_shirt")));