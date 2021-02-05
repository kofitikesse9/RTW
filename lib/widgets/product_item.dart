//import 'package:RTW/models/product.dart';
import 'package:RTW/widgets/product_item_detail.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

import 'package:flutter/cupertino.dart';

class ProductItem extends StatelessWidget {
  final String categoryid;
  final String name;
  final String imageUrl;
  final String description;
  final double price;
  ProductItem(
      this.categoryid, this.name, this.imageUrl, this.description, this.price, categoryName, 
       );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductItemDetail(
                        categoryid, name, imageUrl, description, price)));
          },
          child: Container(
            
            height: 300,
            width: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            title: Text(
              'GHS $price',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              description,
              softWrap: true,
              style: TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.grey[800], fontSize: 16),
            ),
            trailing: IconButton(
              icon: Icon(
                CupertinoIcons.heart,
                color: Colors.red[900],
                size: 30,
              ),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }
}
