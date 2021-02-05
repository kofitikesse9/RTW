import 'package:RTW/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:RTW/widgets/product_item.dart';

class MensClothingScreen extends StatelessWidget {
  final List<Product> dummyProducts;
  final title;

  MensClothingScreen(this.dummyProducts, {Key key, this.title = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 25.0,
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(CupertinoIcons.chevron_left),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100.0),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey,
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10.0),
              itemBuilder: (ctx, i) => 
              ProductItem(
                dummyProducts[i].categoryId,
                dummyProducts[i].title,
                dummyProducts[i].imageUrl,
                dummyProducts[i].description,
                dummyProducts[i].price,
                 dummyProducts[i].categoryName,
              ),
              itemCount: dummyProducts.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.0,
                crossAxisCount: 1,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
