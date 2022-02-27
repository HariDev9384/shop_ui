import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ui/providers/cart_provider.dart';
import 'package:shop_ui/screens/Cart_Page.dart';
import 'package:shop_ui/screens/Home_Page.dart';
void main() {
  runApp(
    MultiProvider(
      providers:[
       ChangeNotifierProvider(create: (_)=>ShoppingCart())
      ],
      child: const MyApp(),
      )
      );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Main app rebuild');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>Home(),
        '/cart':(context) =>Cart_Page() 
      },
    );
  }
}
