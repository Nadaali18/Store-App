import 'package:flutter/material.dart';
import 'package:store_app/screens/home.dart';
import 'package:store_app/screens/update_product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        Home.id: (context)=> Home(),
        UpdateProductPage.id : (context)=>UpdateProductPage(),
      },
      initialRoute: Home.id,
    );
  }
}
