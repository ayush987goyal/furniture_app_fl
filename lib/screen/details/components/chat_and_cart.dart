import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';

class ChatAndCart extends StatelessWidget {
  const ChatAndCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kDefaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFCBF1E),
        borderRadius: BorderRadius.circular(36),
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            'assets/icons/chat.svg',
            height: 18,
          ),
          SizedBox(width: kDefaultPadding / 2),
          Text(
            'Chat',
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          FlatButton.icon(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/shopping-bag.svg'),
            label: Text(
              'Add to cart',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
