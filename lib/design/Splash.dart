import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './AddPersonagens.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatelessWidget {
  Splash({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, -59.0, 375.5, 577.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'rickandmortysplash2' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/splashScreenImg.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 518.0, 386.0, 211.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            pinBottom: true,
            fixedHeight: true,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff324755),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(66.0, 545.0, 244.0, 78.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Conheça o mundo\nRick and Morty',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(60.5, 624.5, 52.0, 1.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: SvgPicture.string(
              _svg_bfvue5,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(57.0, 634.0, 238.0, 24.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Tudo o que se passa na série.',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 729.0, 376.0, 83.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            pinBottom: true,
            fixedHeight: true,
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => AddPersonagens(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 375.0, 83.0),
                    size: Size(376.0, 83.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffd97d54),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(266.0, 0.0, 110.0, 83.0),
                    size: Size(376.0, 83.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffc4714b),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(70.0, 30.0, 128.0, 24.0),
                    size: Size(376.0, 83.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Começar agora!',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(315.0, 33.0, 12.9, 18.6),
                    size: Size(376.0, 83.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Icon material-navig…' (shape)
                        SvgPicture.string(
                      _svg_om2fdo,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_bfvue5 =
    '<svg viewBox="60.5 624.5 52.0 1.0" ><path transform="translate(60.5, 624.5)" d="M 0 0 L 52 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_om2fdo =
    '<svg viewBox="315.0 33.0 12.9 18.6" ><path transform="translate(266.32, -1.0)" d="M 51.12919616699219 34 L 48.67666625976563 36.18430328369141 L 56.64303588867188 43.29488372802734 L 48.67666625976563 50.40545654296875 L 51.12919616699219 52.58975219726563 L 61.56549072265625 43.29488372802734 L 51.12919616699219 34 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
