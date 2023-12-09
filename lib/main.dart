import 'package:akhirmobile/pages/CartPage.dart';
import 'package:akhirmobile/pages/Homepage.dart';
import 'package:akhirmobile/pages/ItemPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
    Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/" : (context) => HomePage(),
        "cartPage" : (context) => CartPage(),
        "itemPage" : (context) => ItemPage(),
      }
    );
  }
  }

