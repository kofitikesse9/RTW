import 'package:RTW/screens/general_screen/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(CupertinoIcons.chevron_left),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                    Text(
                      'Checkout',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Settings()));
                      },
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Column(
                  children:[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(CupertinoIcons.location),
                          onPressed: () {},
                        ),
                        Column(
                          children: [
                            Text(
                              '   Delivery Location',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'East Legon',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text('Edit',
                            style: TextStyle(
                                fontSize: 20, color: Colors.deepOrange)),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  )),
                  height: 80,
                  width: 380,
                ),
                SizedBox(height: 20),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(CupertinoIcons.device_phone_portrait),
                          onPressed: () {},
                        ),
                        Column(
                          children: [
                            Text(
                              '   Phone Number',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '+233245230304',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text('Edit',
                            style: TextStyle(
                                fontSize: 20, color: Colors.deepOrange)),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  )),
                  height: 80,
                  width: 380,
                ),
                
                     Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(CupertinoIcons.creditcard),
                          onPressed: () {},
                        ),
                        Column(
                          children: [
                            Text(
                              '   Payment Method',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Mobile money',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text('select',
                            style: TextStyle(
                                fontSize: 20, color: Colors.deepOrange)),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  )),
                  height: 80,
                  width: 380,
                ),]),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Products',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Text('Price',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey))
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(color: Colors.black, height: 4, width: 400),
                Container(
                
                  child: Expanded(
                                      child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                    SizedBox(height: 20),
                    TextFormField(),
                    SizedBox(height: 20),
                    TextFormField(),
                    SizedBox(height: 20),
                    TextFormField(),
                    
                      ]),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stack(
                                      children: [
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'Total',
                                    style: TextStyle(
                                        fontSize: 22, fontWeight: FontWeight.bold),
                                  ),
                                  
                                ),
                                Text(
                                  'GHS 120.99',
                                  style: TextStyle(
                                      fontSize: 22, fontWeight: FontWeight.bold),
                                ),
                                
                              ],
                            ),
                            SizedBox(height: 30),
                Container(
                        child: Center(
                            child: Text('Place Order',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))),
                        decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(30)),
                        height: 80,
                        width: 380),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class CheckoutScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(top: 35),
//                 child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(right: 40.0),
//                             child: IconButton(
//                               icon: Icon(
//                                 CupertinoIcons.chevron_left,
//                                 color: Colors.black,
//                                 // size: 30,
//                               ),
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                       Spacer(),
//                       IconButton(
//                           icon: Icon(
//                             Icons.settings,
//                             color: Colors.black,
//                             // size: 30,
//                           ),
//                           onPressed: () {}),
//                     ]),
//               ),
//               Container(
//                 height: 3,
//                 width: double.infinity,
//                 color: Colors.grey[400],
//               ),
//               SizedBox(height: 10),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                         //child: Image.network('',
//                         //   fit: BoxFit.contain,),
//                         height: 140,
//                         width: 140,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Colors.green[300],
//                         )),
//                   ),
//                   Column(
//                     children: [
//                       Text('Alhassan Musa',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 25,
//                           )),
//                       SizedBox(height: 45),
//                       Container(
//                         decoration: BoxDecoration(
//                             //color: Colors.red,
//                             borderRadius: BorderRadius.circular(20),
//                             border: Border.all(
//                               color: Colors.grey[400],
//                               width: 1,
//                             )),
//                         height: 60,
//                         width: 230,
//                         child: Center(
//                             child: Text('Edit',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 22,
//                                 ))),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//               SizedBox(height: 20),
//               Container(
//                 height: 3,
//                 width: double.infinity,
//                 color: Colors.grey[400],
//               ),

//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
