import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/Product.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
            ),
            child: Text(
              product.title,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Text(
            '\$${product.price}',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
            ),
            child: Text(
              product.description,
              style: TextStyle(color: kTextLightColor),
            ),
          )
        ],
      ),
    );
  }
}
