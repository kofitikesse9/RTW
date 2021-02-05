import 'package:RTW/models/product.dart';
import 'package:RTW/providers/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'account_screen.dart';
import 'cart_screen.dart';
import 'discover_screen.dart';
import 'favorites._screen.dart';
import 'home_screen.dart';
import 'menu_screens.dart';

class MainScaffold extends StatefulWidget {
  final PanelController controller = PanelController();
  final PanelController cartController = PanelController();
  @override
  _MainScaffoldState createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  //int _selectedIndex = 0;
  int _currentTab = 0;
  Widget _dynamicChild;

  @override
  void initState() {
    _dynamicChild = HomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //final product = Provider.of<Product>(context, listen: false);
    // final cart = Provider.of<Cart>(context, listen: false);
    final screenHeight = MediaQuery.of(context).size.height;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 35.0),
                            child: IconButton(
                              icon: Icon(
                                CupertinoIcons.search,
                                color: Colors.black,
                                size: 30,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(
                          CupertinoIcons.bag,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () {
                          // cart.addItem(product.categoryId, product.price, product.title);
                         // print('Cart icon clicked!');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartScreen()));

                          // widget.controller.open();

                          //setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                Expanded(child: _dynamicChild),
              ],
            ),
            MyPanel(screenHeight: screenHeight, widget: widget),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 2),
        child: BottomNavigationBar(
          selectedItemColor: Colors.black,
          currentIndex: _currentTab,
          onTap: (int value) {
            print("$value");
            if (value == 0) {
              _dynamicChild = HomeScreen();
            } else if (value == 1) {
              _dynamicChild = MenuScreen();
            } else if (value == 2) {
              _dynamicChild = DiscoverScreen();
            } else if (value == 3) {
              _dynamicChild = NotificationScreen();
            } else if (value == 4) {
              _dynamicChild = AccountScreen();
            }

            setState(() {
              _currentTab = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30.0,
                color: Colors.grey,
              ),
              title: Text('HOME'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.text_badge_star,
                size: 30.0,
                color: Colors.grey,
              ),
              title: Text('MENU'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.heart,
                size: 30.0,
                color: Colors.grey,
              ),
              title: Text('FAVORITES'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.exclamationmark_bubble,
                size: 30.0,
                color: Colors.grey,
              ),
              title: Text('NOTIFICATIONS'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
                size: 30.0,
                color: Colors.grey,
              ),
              title: Text('MY ACCOUNT'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyPanel extends StatelessWidget {
  const MyPanel({
    Key key,
    @required this.screenHeight,
    @required this.widget,
  }) : super(key: key);

  final double screenHeight;
  final MainScaffold widget;

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      minHeight: 0,
      maxHeight: screenHeight,
      controller: widget.controller,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      panel: CartScreen(),
    );
  }
}
