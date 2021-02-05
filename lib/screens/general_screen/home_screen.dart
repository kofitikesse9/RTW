import 'package:RTW/models/dummy_data.dart';
import 'package:RTW/models/product.dart';
import 'package:RTW/providers/products.dart';
import 'package:RTW/screens/general_screen/product_item.dart';

import 'package:RTW/screens/mens_screen/mens_clothing_screen.dart';

import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
     final productsData = Provider.of<Products>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MensClothingScreen(
                                    clothingProducts,
                                    title: 'New Collection')));
                      },
                      child: Container(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'New Products',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'See more',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 20),
                    Container(
                      padding: EdgeInsets.all(16),
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.orange[500],
                            ),
                            height: 170,
                            width: 380,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 15.0),
                                  child: Text(
                                    '10% off all the products with CODE: tikesse2457. Promo ends in 5 Days.',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'promotion',
                            style: (TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: 200,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.network(
                                'https://gh.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/04/525441/1.jpg?3584'),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'cufflinks',
                            style: (TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      padding: EdgeInsets.all(16),
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.network(
                                'https://images-na.ssl-images-amazon.com/images/I/91JtNW1PvSL._AC_UL1500_.jpg'),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'gifts',
                            style: (TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MensClothingScreen(
                              shoesProducts,
                              title: 'Shoes')));
                },
                child: Container(
                  height: 400,
                  width: 380,
                  child: Image.network(
                      'https://www.carminashoemaker.com/cdnassets/chukka_carmina_10027_sadl-3.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Shoes',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  final _currentProduct = giftProducts.firstWhere((item) =>
                      item.imageUrl ==
                      'https://content.thewosgroup.com/productimage/17470267/17470267_1.jpg?impolicy=hero');
                  final List<Product> filteredData = giftProducts
                      .where((item) =>
                          item.imageUrl !=
                          'https://content.thewosgroup.com/productimage/17470267/17470267_1.jpg?impolicy=hero')
                      .toList();

                  filteredData.insert(0, _currentProduct);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MensClothingScreen(
                                giftProducts,
                                title: 'Gifts',
                              )));
                },
                child: Container(
                  height: 400,
                  width: 380,
                  child: Image.network(
                      'https://content.thewosgroup.com/productimage/17470267/17470267_1.jpg?impolicy=hero'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Gifts',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  final currentProduct = clothingProducts.firstWhere((item) =>
                      item.imageUrl ==
                      'https://smhttp-ssl-85991.nexcesscdn.net/media/catalog/product/cache/2accacfcf7bc449eee367fe2319d84b6/imp/ort/grey-check-double-breasted-suit-jacket-mfj355afg.jpg');
                  final List<Product> filteredData = clothingProducts
                      .where((item) =>
                          item.imageUrl !=
                          'https://smhttp-ssl-85991.nexcesscdn.net/media/catalog/product/cache/2accacfcf7bc449eee367fe2319d84b6/imp/ort/grey-check-double-breasted-suit-jacket-mfj355afg.jpg')
                      .toList();

                  filteredData.insert(0, currentProduct);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MensClothingScreen(
                                filteredData,
                                title: 'Clothing',
                              )));
                },
                child: Container(
                  height: 400,
                  width: 380,
                  child: Image.network(
                    'https://smhttp-ssl-85991.nexcesscdn.net/media/catalog/product/cache/2accacfcf7bc449eee367fe2319d84b6/imp/ort/grey-check-double-breasted-suit-jacket-mfj355afg.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'clothing',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
        //       new StaggeredGridView.countBuilder(
        //         shrinkWrap: true,
        //         crossAxisCount: 4,
        //         itemCount: 4,
        //        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        // value: products[i],
        // child: ProductItem(),
             
        //         ),
        //         staggeredTileBuilder: (int index) =>
        //             new StaggeredTile.count(2, index.isEven ? 3 : 2),
        //         mainAxisSpacing: 10.0,
        //         crossAxisSpacing: 1.0,
        //       ),
            ],
          ),
        ),
      ),
    );
  }
}
