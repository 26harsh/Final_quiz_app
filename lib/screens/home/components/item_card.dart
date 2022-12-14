import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';


class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;

  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ()=>press(),
      child: Column(
        children: <Widget> [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),

              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16)

              ),
              child: Image.asset(product.image),
            ),
          ),


          Text(product.title,
            style: TextStyle(color:  kTextColor,),
          )
        ],

      ),
    );

  }
}

