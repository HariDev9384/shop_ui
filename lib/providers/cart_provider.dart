import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ui/models/items.dart';
class ShoppingCart with ChangeNotifier{
  int _count=0;
  List<dynamic> _shoppingcart=[
  ];
  int get count=>_count;
List<dynamic> get cart=>_shoppingcart;
   void additem(var item){
     _shoppingcart.add(item);
     notifyListeners();
   }
}