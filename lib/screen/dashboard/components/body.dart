import 'package:flutter/material.dart';
import 'package:furniture_app/components/search_box.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBox(onChanged: (value) {}),
      ],
    );
  }
}
