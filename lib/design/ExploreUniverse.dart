import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './InfoPersonagens.dart';
import 'package:adobe_xd/page_link.dart';
import './HomeApp.dart';
import './DimensoesSplash.dart';
import './EpisodiosSplash.dart';
import './BtnProsseguirSplash.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExploreUniverse extends StatelessWidget {
  ExploreUniverse({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff98decd),
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
                  pageBuilder: () => InfoPersonagens(),
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
            bounds: Rect.fromLTWH(62.0, 137.0, 252.0, 39.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Explore o Universo',
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
            bounds: Rect.fromLTWH(161.5, 192.0, 52.0, 1.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: SvgPicture.string(
              _svg_kkn4qj,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(72.0, 208.0, 232.0, 48.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Descubro sobre os universos\napresentados no show',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(28.0, 306.0, 146.0, 270.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'DimensoesSplash' (component)
                DimensoesSplash(),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(201.0, 306.0, 146.0, 270.0),
            size: Size(375.0, 812.0),
            pinRight: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'EpisodiosSplash' (component)
                EpisodiosSplash(),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(166.0, 661.0, 8.0, 8.0),
            size: Size(375.0, 812.0),
            pinBottom: true,
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
            bounds: Rect.fromLTWH(184.0, 661.0, 8.0, 8.0),
            size: Size(375.0, 812.0),
            pinBottom: true,
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
            bounds: Rect.fromLTWH(202.0, 661.0, 8.0, 8.0),
            size: Size(375.0, 812.0),
            pinBottom: true,
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
                  pageBuilder: () => HomeApp(),
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
const String _svg_kkn4qj =
    '<svg viewBox="161.5 192.0 52.0 1.0" ><path transform="translate(161.5, 192.0)" d="M 0 0 L 52 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
