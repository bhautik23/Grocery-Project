import 'package:flutter/material.dart';
import 'package:nectar/login%20page.dart';
import 'Splash screen.dart';
import 'Home Screen.dart';
import 'Categories.dart';
import 'Filter_Screen.dart';
import 'My Cart.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Screen(),
    );
  }
}
