import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/Product.dart';
import 'package:furniture_app/screen/dashboard/components/product_card.dart';

class ProductListWithBackdrop extends StatelessWidget {
  const ProductListWithBackdrop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 70),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
          ListView.builder(
            itemCount: products.length,
            itemBuilder: (ctx, index) => ProductCard(
              isEven: index.isEven,
              product: products[index],
              onPress: () {},
            ),
          )
        ],
      ),
    );
  }
}
