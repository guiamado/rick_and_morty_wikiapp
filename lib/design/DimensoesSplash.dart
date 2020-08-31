import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class DimensoesSplash extends StatelessWidget {
  DimensoesSplash({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 28.0, 146.0, 242.0),
          size: Size(146.0, 270.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(33.0),
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
          bounds: Rect.fromLTWH(0.0, 0.0, 146.0, 202.0),
          size: Size(146.0, 270.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child:
              // Adobe XD layer: '9eddd8f671941887821…' (shape)
              Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
              image: DecorationImage(
                image: const AssetImage('assets/images/dimensionSplashImg.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(32.0, 202.0, 80.0, 21.0),
          size: Size(146.0, 270.0),
          pinBottom: true,
          fixedWidth: true,
          fixedHeight: true,
          child: Text(
            'Dimensões',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              color: const Color(0xff000000),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(4.0, 223.0, 136.0, 19.0),
          size: Size(146.0, 270.0),
          pinBottom: true,
          fixedWidth: true,
          fixedHeight: true,
          child: Text(
            'Explore as dimensões',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              color: const Color(0xff708491),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
