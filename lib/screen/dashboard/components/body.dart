import 'package:flutter/material.dart';
import 'package:furniture_app/components/search_box.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screen/dashboard/components/category_filter.dart';
import 'package:furniture_app/screen/dashboard/components/product_list_with_backdrop.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(onChanged: (value) {}),
          CategoryFilter(),
          SizedBox(height: kDefaultPadding / 2),
          ProductListWithBackdrop(),
        ],
      ),
    );
  }
}
