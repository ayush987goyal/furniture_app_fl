import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class ColorSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ColorDot(color: Colors.grey, isSelected: true, onPress: () {}),
          ColorDot(color: Colors.red, onPress: () {}),
          ColorDot(color: Colors.blueAccent, onPress: () {}),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final Function onPress;

  const ColorDot({
    Key key,
    this.color,
    this.isSelected = false,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kBackgroundColor,
          border: isSelected
              ? Border.all(color: color, width: 2)
              : Border.all(color: Colors.transparent, width: 2),
        ),
        child: Container(
          height: 18,
          width: 18,
          margin: EdgeInsets.all(2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
      ),
    );
  }
}
