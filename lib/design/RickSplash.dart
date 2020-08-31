import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class RickSplash extends StatelessWidget {
  RickSplash({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 10.0, 136.0, 182.0),
          size: Size(137.0, 192.0),
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
          bounds: Rect.fromLTWH(0.0, 0.0, 137.0, 137.0),
          size: Size(137.0, 192.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child:
              // Adobe XD layer: '175294' (shape)
              Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              image: DecorationImage(
                image: const AssetImage('assets/images/rickSplash.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(52.0, 146.0, 32.0, 21.0),
          size: Size(137.0, 192.0),
          pinBottom: true,
          fixedWidth: true,
          fixedHeight: true,
          child: Text(
            'Rick',
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
          bounds: Rect.fromLTWH(42.0, 163.0, 54.0, 19.0),
          size: Size(137.0, 192.0),
          pinBottom: true,
          fixedWidth: true,
          fixedHeight: true,
          child: Text(
            'Sanchez',
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
