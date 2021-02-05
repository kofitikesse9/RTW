import 'package:RTW/models/product.dart';
import 'package:RTW/providers/cart.dart';
import 'package:RTW/screens/general_screen/sign_up_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'log_in_screen.dart';

class AccountScreen extends StatefulWidget {

  final PanelController _controller = PanelController();
  final PanelController logInController = PanelController();

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isLoggingIn = false;


  
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height * 0.90;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Already have an account?',
                        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  IconButton(
                      icon: Icon(
                        CupertinoIcons.person,
                      ),
                      iconSize: 35,
                      onPressed: () {}),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      print('Log in button clicked!');
                      isLoggingIn = true;
                      widget._controller.open();

                      setState(() {});
                    },
                    child: Container(
                      width: 380,
                      height: 65,
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[700],),
                      child: Center(
                        child: Text(
            'Log in',
            style: TextStyle(
              fontSize: 22,
            ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'or',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: 380,
                    height: 65,
                    decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )),
                    child: Row(
                      children: [
                        Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(
                FontAwesomeIcons.apple,
              ),
              iconSize: 27,
              onPressed: () {},
            ),
                        ),
                        Text(
            '    Continue with Apple',
            style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'New User?',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      print('Register button clicked!');
                      isLoggingIn = false;
                      widget._controller.open();

                      setState(() {});
                    },
                    child: Container(
                      width: 380,
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      color: Colors.deepOrangeAccent,),
                      child: Center(
                        child: Text(
            'Register',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white
                ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, right: 20.0),
                    child: Text(
                      'By logging/signing in with my social login,    I agree to connect my account with the',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            SlidingUpPanel(
              minHeight: 0,
              maxHeight: screenHeight,
              controller: widget._controller,
              panel: (isLoggingIn) ? LogIn() : SignUp(),
            ),
          ],
        ),
      ),
    );
  }
}
