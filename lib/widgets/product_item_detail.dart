import 'package:RTW/screens/general_screen/cart_screen.dart';
import 'package:RTW/screens/general_screen/checkout_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItemDetail extends StatelessWidget {
  final String categoryid;
  final String name;
  final String imageUrl;
  final String description;
  final double price;

  final borderRadius =
      const BorderRadius.only(bottomRight: Radius.circular(40));

  ProductItemDetail(
      this.categoryid, this.name, this.imageUrl, this.description, this.price);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: 'imageHero',
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: borderRadius,
                    ),
                    height: MediaQuery.of(context).size.width,
                    width: double.infinity,
                    child: ClipRRect(
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.contain,
                      ),
                      borderRadius: borderRadius,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: IconButton(
                      icon: Icon(CupertinoIcons.chevron_left),
                      color: Colors.black,
                      iconSize: 25,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              color: Colors.grey[600],
              height: 3,
              width: 150,
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(
                        CupertinoIcons.circle_fill,
                        color: Colors.grey[400],
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(CupertinoIcons.circle_fill,
                          color: Colors.blueGrey),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(CupertinoIcons.circle_fill,
                          color: Colors.purple),
                      onPressed: () {}),
                  IconButton(
                      icon:
                          Icon(CupertinoIcons.circle_fill, color: Colors.amber),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(CupertinoIcons.circle_fill,
                          color: Colors.brown[400]),
                      onPressed: () {}),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 50,
                            decoration: (BoxDecoration(
                              // color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                topLeft: Radius.circular(30),
                              ),
                              border: Border.all(
                                color: Colors.grey[900],
                                width: 1,
                              ),
                            )),
                            child: Center(
                                child: Text('S',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 50,
                            decoration: (BoxDecoration(
                              border: Border.all(
                                color: Colors.grey[900],
                                width: 1,
                              ),
                            )),
                            child: Center(
                                child: Text('M',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 50,
                            decoration: (BoxDecoration(
                              border: Border.all(
                                color: Colors.grey[900],
                                width: 1,
                              ),
                            )),
                            child: Center(
                                child: Text('L',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 50,
                            decoration: (BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                              border: Border.all(
                                color: Colors.grey[900],
                                width: 1,
                              ),
                            )),
                            child: Center(
                                child: Text(
                              'XL',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 50,
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '-',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '1',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '+',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'GHS $price',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Description',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                    ),
                    height: 60,
                    width: 150,
                    child: IconButton(
                        icon: Icon(CupertinoIcons.bag),
                        iconSize: 30,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartScreen()));
                        }),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckoutScreen()));
                    },
                                      child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                      ),
                      height: 60,
                      width: 250,
                      child: Center(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
