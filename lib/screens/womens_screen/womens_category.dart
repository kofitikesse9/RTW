import 'package:RTW/models/product.dart';

import 'package:RTW/widgets/store_item.dart';
import 'package:expandable/expandable.dart';
//import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class WomensScreen extends StatefulWidget {
  @override
  _WomensScreenState createState() => _WomensScreenState();
}

class _WomensScreenState extends State<WomensScreen> {
  Product _selectedNewCollection;

  ExpandableController _expandableController = ExpandableController();
  @override
  void initState() {
    super.initState();
  }

  List<Widget> get getNewCollectionChildren {
    final products = [
      Product(
          id: 1,
          categoryId: 1,
          categoryName: 'Clothing',
          title: 'Bodycon dress'),
      Product(id: 2, categoryId: 2, categoryName: 'Accessories', title: 'Watch'),
      Product(id: 3, categoryId: 3, categoryName: 'Shoes', title: 'Stilettos'),
      Product(id: 4, categoryId: 4, categoryName: 'Gifts', title: 'Purse'),
    ];
    return products
        .map((newCollection) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              child: GestureDetector(
                onTap: () {
                  // final pageToGo;

                  // if(newCollection.id == 1){
                  //   pageToGo = ClothingScreen();

                  // }else if(newCollection.id == 2){

                  // }
                  // else if(newCollection.id == 3){

                  // }else if(newCollection.id == 4){

                  // }

                  // Navigator.of(context).push(route)
                },
                child: Text(
                  newCollection.categoryName,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ))
        .toList();
  }

  List<Widget> get _getShopsChildren {
    final shops = [
      Product(id: 1, title: "Shop 1"),
      Product(id: 2, title: "Shop 2"),
      Product(id: 3, title: "Shop 3")
    ];
    return shops
        .map((shop) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  shop.title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ))
        .toList();
  }

  List<Widget> get _getClothingChildren {
    final clothes = [
      Product(id: 1, categoryId: 1, title: "Bodycon dresses"),
      Product(id: 2, categoryId: 2, title: "Jeans"),
      Product(id: 3, categoryId: 3, title: "Jumpsuits"),
      Product(id: 4, categoryId: 4, title: "Skirts"),
       Product(id: 5, categoryId: 4, title: "Knitted wear"),
    ];
    return clothes
        .map((shop) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  shop.title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ))
        .toList();
  }

  List<Widget> get _getAccessoriesChildren {
    final accessories = [
      Product(id: 2, categoryId: 2, title: "Watches"),
      Product(id: 2, categoryId: 2, title: "Jewellery"),
      Product(id: 2, categoryId: 2, title: "Bags & Purses"),
      Product(id: 2, categoryId: 2, title: "Hats"),
      Product(id: 2, categoryId: 2, title: "Sunglasses"),
    ];

    return accessories
        .map((shop) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  shop.title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ))
        .toList();
  }

  List<Widget> get getShoesChildren {
    final shoes = [
      Product(id: 3, categoryId: 3, title: "Boots"),
      Product(id: 3, categoryId: 3, title: "Flat Sandals"),
      Product(id: 3, categoryId: 3, title: "Stiletto heels"),
      Product(id: 3, categoryId: 3, title: "Trainers"),
      Product(id: 3, categoryId: 3, title: "Slippers"),
    ];
    return shoes
        .map((shop) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  shop.title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StoreItem(
            "New Collection",
            children: getNewCollectionChildren,
            color: Colors.grey[400],
          ),
          SizedBox(
            height: 20,
          ),
          StoreItem(
            "Shops",
            children: _getShopsChildren,
            color: Colors.grey[200],
          ),
          SizedBox(
            height: 20,
          ),
          StoreItem(
            "Clothing",
            children: _getClothingChildren,
            color: Colors.grey[500],
          ),
          SizedBox(
            height: 20,
          ),
          StoreItem(
            "Accessories",
            children: _getAccessoriesChildren,
            color: Colors.grey[200],
          ),
          SizedBox(
            height: 20,
          ),
          StoreItem(
            "Shoes",
            children: getShoesChildren,
            color: Colors.grey[600],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.grey[900],
            child: Center(
              child: Text(
                'Sales (up to 50%)',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
