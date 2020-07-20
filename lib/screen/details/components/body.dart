import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/Product.dart';
import 'package:furniture_app/screen/details/components/chat_and_cart.dart';
import 'package:furniture_app/screen/details/components/color-selector.dart';
import 'package:furniture_app/screen/details/components/product_image.dart';
import 'package:furniture_app/screen/details/components/product_info.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ProductImage(size: size, image: product.image),
                ColorSelector(),
                SizedBox(height: kDefaultPadding),
                ProductInfo(product: product),
                SizedBox(height: kDefaultPadding / 2),
              ],
            ),
          ),
          ChatAndCart()
        ],
      ),
    );
  }
}
