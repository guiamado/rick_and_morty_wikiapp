import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './AddPersonagens.dart';
import 'package:adobe_xd/page_link.dart';
import './HomeApp.dart';
import './BtnProsseguirSplash.dart';
import './ExploreUniverse.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoPersonagens extends StatelessWidget {
  InfoPersonagens({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9bd8d2),
      body: Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(32.0, 45.4, 12.9, 18.6),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinTop: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'Icon material-navig…' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => AddPersonagens(),
                ),
              ],
              child: SvgPicture.string(
                _svg_ox75if,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(289.0, 45.0, 56.0, 24.0),
            size: Size(375.0, 812.0),
            pinRight: true,
            pinTop: true,
            fixedWidth: true,
            fixedHeight: true,
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => HomeApp(),
                ),
              ],
              child: Text(
                'PULAR',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(39.0, 163.0, 298.0, 78.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            fixedHeight: true,
            child: Text(
              'Informações\nsobre os personagens',
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
            bounds: Rect.fromLTWH(161.5, 247.0, 52.0, 1.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: SvgPicture.string(
              _svg_b607id,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(88.0, 250.0, 200.0, 48.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Descubro tudo sobre seu\npersonagem favorito',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(92.0, 322.0, 192.0, 214.0),
            size: Size(375.0, 812.0),
            child:
                // Adobe XD layer: 'hiclipart.com' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(
                      'assets/images/rickAndMortySplashImg2.png'),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 30),
                    blurRadius: 99,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(166.0, 567.0, 8.0, 8.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x33707070),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(184.0, 567.0, 8.0, 8.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(202.0, 567.0, 8.0, 8.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x33707070),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(73.0, 703.0, 230.0, 50.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            pinBottom: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'BtnProsseguirSplash' (component)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => ExploreUniverse(),
                ),
              ],
              child: BtnProsseguirSplash(),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_ox75if =
    '<svg viewBox="32.0 45.4 12.9 18.6" ><path transform="translate(-16.68, 11.41)" d="M 59.11296081542969 34 L 61.56549072265625 36.18429946899414 L 53.59912109375 43.29487609863281 L 61.56549072265625 50.40544509887695 L 59.11296081542969 52.58974075317383 L 48.67666625976563 43.29487609863281 L 59.11296081542969 34 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_b607id =
    '<svg viewBox="161.5 247.0 52.0 1.0" ><path transform="translate(161.5, 247.0)" d="M 0 0 L 52 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
