import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class MortySplash extends StatelessWidget {
  MortySplash({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 9.0, 136.0, 182.0),
          size: Size(136.0, 191.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
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
          bounds: Rect.fromLTWH(0.0, 0.0, 136.0, 137.0),
          size: Size(136.0, 191.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child:
              // Adobe XD layer: '161485' (shape)
              Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              image: DecorationImage(
                image: const AssetImage('assets/images/mortySplash.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(47.0, 145.0, 42.0, 21.0),
          size: Size(136.0, 191.0),
          pinBottom: true,
          fixedWidth: true,
          fixedHeight: true,
          child: Text(
            'Morty',
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
          bounds: Rect.fromLTWH(50.0, 162.0, 36.0, 19.0),
          size: Size(136.0, 191.0),
          pinBottom: true,
          fixedWidth: true,
          fixedHeight: true,
          child: Text(
            'Smith',
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
