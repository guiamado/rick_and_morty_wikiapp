import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class BtnProsseguirSplash extends StatelessWidget {
  BtnProsseguirSplash({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 230.0, 50.0),
          size: Size(230.0, 50.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: const Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 10),
                  blurRadius: 10,
                ),
              ],
            ),
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(62.0, 11.0, 106.0, 29.0),
          size: Size(230.0, 50.0),
          child: Text(
            'Prosseguir',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 22,
              color: const Color(0xff000000),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
