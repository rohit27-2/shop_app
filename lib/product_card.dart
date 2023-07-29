import 'package:flutter/material.dart';
import 'package:shop_app/global_variables.dart' as p;

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.title,
      required this.price,
      required this.image,
      required this.backgroudColor});
  final String title;
  final double price;
  final String image;
  final Color backgroudColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: backgroudColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 5),
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(height: 5),
          Center(
            child: Image.asset(
              image,
              height: 175,
            ),
          )
        ],
      ),
    );
  }
}
