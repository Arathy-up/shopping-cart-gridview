import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/Model/Product.dart';
class Singleitem extends StatelessWidget
{
   final Product productobj;


   const Singleitem({this.productobj,Key key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
          Expanded(
            child: Container(
              height: 180,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey,
              ),
              child: Image.network(productobj.image),
            ),
          ),
          Text(productobj.title,style: TextStyle(fontWeight: FontWeight.bold),),
          Text("price:${productobj.price}"),
        FlatButton(onPressed: (){},
            child: Text("Buy"),
            color: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: Colors.red)
        ),
        )
        
      ],
    );
  }
}
