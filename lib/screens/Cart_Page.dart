import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ui/providers/cart_provider.dart';
class Cart_Page extends StatelessWidget {
  const Cart_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cart_items=context.watch<ShoppingCart>().cart;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cart Page')
        ),
        body: ListView.builder(
        itemCount: context.watch<ShoppingCart>().cart.length,

        itemBuilder: (context,int index){
          return Container(
            
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            color: Colors.lightBlueAccent,
            child: Column(
              children: 
                [
                Text(cart_items[index].name),
                Image(image: NetworkImage(cart_items[index].img)),
                Text(cart_items[index].cost)
                
                //Image(image: NetworkImage()),
                //Text()

              ],
            ),
          );
        },
      ),
      );
  }
}