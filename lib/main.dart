import 'package:e_commerce_application/children_home_screen.dart';
import 'package:e_commerce_application/detail_screen.dart';
import 'package:e_commerce_application/splash_screen.dart';
import 'package:e_commerce_application/women_home_screen.dart';
import 'package:flutter/material.dart';

import 'cart_screen.dart';
import 'home_screen.dart';
import 'man_home_screen.dart';

void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const SplashScreen(),
        '/home':(context) => const HomeScreen(),
         '/detail':(context) => const DetailScreen(),
        '/cart':(context) => const CartScreen(),
        '/man':(context) => const ManHomeScreen(),
        '/women':(context) => const WomenHomeScreen(),
        '/children':(context) => const ChildrenHomeScreen(),
      },
    );
  }
}
