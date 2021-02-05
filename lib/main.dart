import 'package:RTW/helpers/custom_route.dart';
import 'package:RTW/providers/auth_service.dart';
import 'package:RTW/providers/cart.dart';
import 'package:RTW/providers/products.dart';
import 'package:RTW/screens/general_screen/main_scaffold.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
         ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
         ChangeNotifierProvider(
          create: (ctx) => Products(),),
      ],
      child: MaterialApp(
        title: 'RTW',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.black,
          pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CustomPageTransitionBuilder(),
              TargetPlatform.iOS: CustomPageTransitionBuilder(),
            },
          ),
        ),
        home: MainScaffold(),
      ),
    );
  }
}
