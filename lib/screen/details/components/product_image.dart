import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class ProductImage extends StatelessWidget {
  final Size size;
  final String image;

  const ProductImage({
    Key key,
    this.size,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          Image.asset(
            image,
            width: size.width * 0.75,
            height: size.width * 0.75,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
