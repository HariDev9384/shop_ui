import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ui/models/items.dart';
import 'package:shop_ui/providers/cart_provider.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    List<item> items=[
      item(name: 'Iphone 13 pro Max',cost: '1,39,900',img: 'https://pngimg.com/uploads/iphone_13/iphone_13_PNG32.png'),
      item(name: 'Asus ROG Zephyrus Duo 15',cost: '1,45,990',img: 'https://dlcdnwebimgs.asus.com/gain/E04BB1B6-19CB-4433-BE0A-E7538F78BB7E/w1000/h732'),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(onPressed: ()=>Navigator.pushNamed(context, '/cart'), icon: Icon(Icons.home)),
        ],
        title: Text('Homepage'),
      ),
      // body: Center(
      //   child: RaisedButton(
      //     onPressed: ()=>context.read<ShoppingCart>().additem('jhjkh'),
      //   ),
      // ),
      body: ListView.builder(
        itemCount: items.length,

        itemBuilder: (context,int index){
          return Container(
            
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            color: Colors.lightBlueAccent,
            child: Column(
              children: 
                [Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(items[index].name),
                    
                    IconButton(
                      icon: Icon(Icons.thumb_up,color: Colors.blue,),
                      onPressed: ()=>context.read<ShoppingCart>().cart.add(items[index]),
                      )
                  ],
                ),
                Image(image: NetworkImage(items[index].img)),
                Text(items[index].cost)

              ],
            ),
          );
        },
      ),
    );
  }
}