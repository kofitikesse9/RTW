import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 300.0, left: 20),
            child: Center(
              child: Text(
                  'No notifications yet!',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
            ),
          ),
          SizedBox(height: 40),
          
        ],
      ),
    ));
  }
}
