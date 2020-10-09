import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/Model/Product.dart';
import 'package:flutter_shoppingcart/View/Singleitem.dart';
class Shopping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text("My Shopping App",style: TextStyle(color: Colors.black),),
          actions: [
            IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){},color: Colors.black,)
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: productlist.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                  childAspectRatio: 0.75),
                  itemBuilder: (context,index){
                    return Singleitem(productobj: productlist[index],);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
