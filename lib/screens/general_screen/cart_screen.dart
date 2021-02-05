import 'package:RTW/screens/general_screen/checkout_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CartScreen extends StatelessWidget {
  final borderRadius = BorderRadius.circular(30);

  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(CupertinoIcons.chevron_left),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              child: ListTile(
                title: Text(
                  '  Your',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Shopping cart',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: (BoxDecoration(
                    borderRadius: borderRadius,
                    color: Colors.blue,
                  )),
                  height: 150,
                  width: 150,
                  child: ClipRRect(
                    child: Image.network(
                        'https://cdn.shopify.com/s/files/1/0269/7759/products/AZ_DarkNavy_BT1_1024x1024.jpg',
                        fit: BoxFit.contain),
                  ),
                ),
               Column(
                 children: [
                   Text(
                        'Bowtie',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      SizedBox(height:10),
                       Text('1x  GHS 65.99',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                       ),
                 ],
               ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: borderRadius,
                  ),
                  child: Center(child: Text('x1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
                ),
                
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: (){
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckoutScreen()));
              },
                          child: Container(
                height: 80,
                width: 380,
               
                decoration: BoxDecoration(
                   color: Colors.deepOrangeAccent,
                  borderRadius: borderRadius,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Proceed to checkout',style: TextStyle(fontWeight: FontWeight.bold, fontSize:25,color: Colors.white),
                    ),
                  ),
                  IconButton(icon: Icon(CupertinoIcons.chevron_right_circle),color:Colors.white,onPressed: (){},),
                ]),
              ),
            ),
          ],
        ),

        
      ),
    );
  }
}
