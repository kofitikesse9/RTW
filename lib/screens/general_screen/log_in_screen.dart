

import 'package:RTW/widgets/authentification_service.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';


class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
 final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  //var authProvider;


@override
  void initState() {
   //authProvider = Provider<>.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 80.0, left: 20, bottom: 50),
                  child: Text(
                    'Log in with your email',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    hintText: '     Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                 
                  onChanged: (value) {
                    setState(() {
                    
                    });
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: '     Password',
                  ),
                  obscureText: true,
                   onChanged: (value) {
                    setState(() {
                     
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: (){
                context.read<AuthenticationService>().signIn(
                 email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  );
              },
                          child: Container(
                height: 80,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                color: Colors.deepOrangeAccent),
               
                child: Center(
                  child: Text(
                    'Log in',
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
              'Forgot your password?',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


  // onPressed: (){
  //                context.read<AuthenticationService>().signIn(
  //                   email: emailController.text.trim(),
  //                   password: passwordController.text.trim(),
  //                );
  //             }