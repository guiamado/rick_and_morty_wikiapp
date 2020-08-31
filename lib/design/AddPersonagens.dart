import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Splash.dart';
import 'package:adobe_xd/page_link.dart';
import './HomeApp.dart';
import './MortySplash.dart';
import './RickSplash.dart';
import './BtnProsseguirSplash.dart';
import './InfoPersonagens.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddPersonagens extends StatelessWidget {
  AddPersonagens({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffa0c0db),
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
                  pageBuilder: () => Splash(),
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
            bounds: Rect.fromLTWH(36.0, 163.0, 304.0, 78.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            fixedHeight: true,
            child: Text(
              'Adicione seus\nPersonagens favoritos',
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
            bounds: Rect.fromLTWH(161.5, 246.0, 52.0, 1.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: SvgPicture.string(
              _svg_vv4vr9,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(65.0, 250.0, 246.0, 24.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Para o seu perfil personalizado',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(32.0, 339.0, 136.0, 191.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'MortySplash' (component)
                MortySplash(),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(208.0, 338.0, 137.0, 192.0),
            size: Size(375.0, 812.0),
            pinRight: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'RickSplash' (component)
                RickSplash(),
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
                color: const Color(0xffffffff),
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
                color: const Color(0x33707070),
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
                  pageBuilder: () => InfoPersonagens(),
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
const String _svg_vv4vr9 =
    '<svg viewBox="161.5 246.0 52.0 1.0" ><path transform="translate(161.5, 246.0)" d="M 0 0 L 52 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
