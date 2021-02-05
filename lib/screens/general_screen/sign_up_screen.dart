import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _passwordController = TextEditingController();
  String _email, _password;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(CupertinoIcons.chevron_left),
                    onPressed: () {
                     // Navigator.of(context).pop();
                    },
                  ),
                  Text(
                    'Personal Information',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
            TextFormField(
                decoration: InputDecoration(
                  labelText: '     E-Mail',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty || !value.contains('@')) {
                    return 'Invalid email!';
                  }
                  return null;
                }),
            TextFormField(
              decoration: InputDecoration(
                labelText: '     Password',
              ),
              obscureText: true,
              controller: _passwordController,
              validator: (value) {
                if (value.isEmpty || value.length < 5) {
                  return 'Password is too short!';
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: '     Confirm Password',
              ),
              obscureText: true,
              controller: _passwordController,
              validator: (value) {
                if (value.isEmpty || value.length < 5) {
                  return 'Passwords do not match!';
                }
              },
            ),
            TextFormField(
                decoration: InputDecoration(
                  labelText: '     Name',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty || !value.contains('0-9')) {
                    return 'Invalid name!';
                  }
                  return null;
                }),
            TextFormField(
                decoration: InputDecoration(
                  labelText: '     Last Name',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty || !value.contains('0-9')) {
                    return 'Invalid name!';
                  }
                  return null;
                }),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                auth.createUserWithEmailAndPassword(
                    email: _email, password: _password);
              },
              child: Container(
                height: 80,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                color: Colors.deepOrangeAccent,),
                child: Center(
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Want to subscribe to our newsletter?',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.checkCircle,
              ),
              iconSize: 40,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
