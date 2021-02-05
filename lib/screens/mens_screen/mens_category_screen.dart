import 'package:RTW/models/dummy_data.dart';
import 'package:RTW/models/product.dart';

//import 'package:RTW/screens/mens_screen/mens_clothing_screen.dart';

import 'package:RTW/widgets/store_item.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import 'mens_clothing_screen.dart';

class MensCategoryScreen extends StatefulWidget {
  @override
  _MensCategoryScreenState createState() => _MensCategoryScreenState();
}

class _MensCategoryScreenState extends State<MensCategoryScreen> {
  Product _selectedNewCollection;

  ExpandableController _expandableController = ExpandableController();

  @override
  void initState() {
    super.initState();
  }

  List<Widget> get _getNewCollectionChildren {
    final newCollection = [
      Product(id: 1, categoryName: 'Clothing', categoryId: 1),
      Product(id: 2, categoryName: 'Accessories', categoryId: 2),
      Product(id: 3, categoryName: 'Shoes', categoryId: 3),
      Product(id: 4, categoryName: 'Gifts', categoryId: 4),
    ];
    return newCollection
        .map((newCollection) => Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: GestureDetector(
                onTap: () {
                  if (newCollection.id == 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MensClothingScreen(
                                  clothingProducts,
                                  title: 'Clothing',
                                )));
                  } else if (newCollection.id == 2) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MensClothingScreen(
                                accessoriesPdts,
                                title: "Accessories")));
                  } else if (newCollection.id == 3) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MensClothingScreen(
                                  shoesProducts,
                                  title: 'Shoes',
                                )));
                  } else if (newCollection.id == 4) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MensClothingScreen(
                                  giftProducts,
                                  title: 'Gifts',
                                )));
                  }
                },
                child: Text(
                  newCollection.categoryName,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ))))
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
      Product(id: 1, categoryId: 1, title: "Polo T-Shirt"),
      Product(id: 2, categoryId: 1, title: "Jeans"),
      Product(id: 3, categoryId: 1, title: "Pants"),
      Product(id: 4, categoryId: 1, title: "Under Pants"),
      Product(id: 4, categoryId: 1, title: "Suits"),
      Product(id: 4, categoryId: 1, title: "Shirts"),
    ];
    return clothes
        .map((clothes) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MensClothingScreen(
                              clothingProducts,
                              title: 'Clothing')));
                },
                child: Text(
                  clothes.title,
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
      Product(id: 1, categoryId: 2, title: "Watches"),
      Product(id: 2, categoryId: 2, title: "Bracelets"),
      Product(id: 3, categoryId: 2, title: "Bowtie"),
      Product(id: 4, categoryId: 2, title: "pouch")
    ];
    return accessories
        .map((accessories) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              child: GestureDetector(
                onTap: () {
                  if (accessories.id == 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MensClothingScreen(
                                  accessoriesPdts,
                                  title: 'Watches',
                                )));
                  }
                   else if (accessories.id == 2) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MensClothingScreen(
                                  accessoriesPdts,
                                  title: 'Bracelets',
                                )));
                  }
                  else if (accessories.id == 3) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MensClothingScreen(
                                  accessoriesPdts,
                                  title: 'Bowtie',
                                )));
                  }
                   else if (accessories.id == 4) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MensClothingScreen(
                                  accessoriesPdts,
                                  title: 'Pouch',
                                )));
                  }
                },
                child: Text(
                  accessories.title,
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
      Product(id:1, title: "Formal shoes"),
      Product(id: 2, categoryId: 3, title: "Boots"),
      Product(id: 3, categoryId: 3, title: "Sneakers"),
      Product(id: 4, categoryId: 3, title: "Loafers"),
      Product(id: 5, categoryId: 3, title: "Slippers")
    ];
    return shoes
        .map((shoes) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              child: GestureDetector(
                onTap: () {
                   if (shoes.id == 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MensClothingScreen(
                                 shoesProducts,
                                  title: 'Formal shoes',
                                )));
                  } else if (shoes.id == 2) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MensClothingScreen(
                                 shoesProducts,
                                  title: 'Boots',
                                )));
                  } else if (shoes.id == 3) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MensClothingScreen(
                                 shoesProducts,
                                  title: 'Sneakers',
                                )));
                  }
                  else if (shoes.id == 4) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MensClothingScreen(
                                 shoesProducts,
                                  title: 'Loafers',
                                )));
                  }
                   else if (shoes.id == 5) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MensClothingScreen(
                                 shoesProducts,
                                  title: 'Slippers',
                                )));
                  }
                },
                child: Text(
                  shoes.title,
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
            children: _getNewCollectionChildren,
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
