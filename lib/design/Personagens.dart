import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:rickandmorty/pages/personagem/personagem.dart';
import 'package:rickandmorty/pages/personagem/personagem_card.dart';
import 'package:rickandmorty/pages/personagem/personagem_listview.dart';
import 'package:rickandmorty/pages/personagem/personagens_bloc.dart';
import 'package:rickandmorty/widgets/app_bar_top.dart';
import './Favoritos.dart';
import 'package:adobe_xd/page_link.dart';
import './HomeApp.dart';
import './Episodios.dart';
import './Dimensoes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Personagens extends StatefulWidget {
  Personagens({
    Key key,
  }) : super(key: key);

  @override
  _PersonagensState createState() => _PersonagensState();
}

class _PersonagensState extends State<Personagens>
    with AutomaticKeepAliveClientMixin<Personagens> {
  final _bloc = PersonagensBloc();
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    print('entrei');
    _bloc.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: AppBarTop('Personagens'),
      ),
      backgroundColor: const Color(0xfff0f3f4),
      body: Stack(
        children: <Widget>[
          Center(
            child: StreamBuilder(
              stream: _bloc.stream,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Não foi possivel buscar os carros');
                }
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                List<Personagem> personagens = snapshot.data;
                return RefreshIndicator(
                  onRefresh: _onRefresh,
                  child: PersonagemListView(personagens),
                  color: const Color(0xff8bc6c0),
                );
              },
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 742.2, 375.0, 70.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            pinBottom: true,
            fixedHeight: true,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(147.0, 705.0, 82.0, 82.0),
            size: Size(375.0, 812.0),
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Favoritos(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: const Color(0xffffffff),
                ),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(158.0, 716.0, 60.0, 60.0),
            size: Size(375.0, 812.0),
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Favoritos(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: const Color(0xff8bc6c0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff8bc6c0),
                      offset: Offset(0, 10),
                      blurRadius: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(23.5, 757.4, 30.0, 25.5),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'Icon material-home' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => HomeApp(),
                ),
              ],
              child: SvgPicture.string(
                _svg_xzq720,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(295.0, 787.0, 70.0, 16.0),
            size: Size(375.0, 812.0),
            pinRight: true,
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child: Text(
              'Personagens',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 12,
                color: const Color(0xff8bc6c0),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(92.8, 756.7, 33.0, 27.0),
            size: Size(375.0, 812.0),
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'Icon material-tv' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Episodios(),
                ),
              ],
              child: SvgPicture.string(
                _svg_llog2o,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(250.5, 757.2, 30.0, 30.0),
            size: Size(375.0, 812.0),
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'Icon material-public' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Dimensoes(),
                ),
              ],
              child: SvgPicture.string(
                _svg_plg5xi,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(313.8, 759.7, 33.0, 21.0),
            size: Size(375.0, 812.0),
            pinRight: true,
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'Icon material-people' (shape)
                SvgPicture.string(
              _svg_c736dg,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(173.0, 732.2, 30.0, 27.5),
            size: Size(375.0, 812.0),
            pinBottom: true,
            fixedWidth: true,
            fixedHeight: true,
            child:
                // Adobe XD layer: 'Icon material-favor…' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Favoritos(),
                ),
              ],
              child: SvgPicture.string(
                _svg_r9nal8,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onRefresh() {
    return _bloc.fetch();
  }
}

const String _svg_xzq720 =
    '<svg viewBox="23.5 757.4 30.0 25.5" ><path transform="translate(20.5, 752.91)" d="M 15 30 L 15 21 L 21 21 L 21 30 L 28.5 30 L 28.5 18 L 33 18 L 18 4.5 L 3 18 L 7.5 18 L 7.5 30 L 15 30 Z" fill="#c3cbce" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_llog2o =
    '<svg viewBox="92.8 756.7 33.0 27.0" ><path transform="translate(91.3, 752.16)" d="M 31.5 4.5 L 4.5 4.5 C 2.849999904632568 4.5 1.5 5.849999904632568 1.5 7.5 L 1.5 25.5 C 1.5 27.14999961853027 2.849999904632568 28.5 4.5 28.5 L 12 28.5 L 12 31.5 L 24 31.5 L 24 28.5 L 31.5 28.5 C 33.15000152587891 28.5 34.48500061035156 27.14999961853027 34.48500061035156 25.5 L 34.5 7.5 C 34.5 5.849999904632568 33.15000152587891 4.5 31.5 4.5 Z M 31.5 25.5 L 4.5 25.5 L 4.5 7.5 L 31.5 7.5 L 31.5 25.5 Z" fill="#c3cbce" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_plg5xi =
    '<svg viewBox="250.5 757.2 30.0 30.0" ><path transform="translate(247.5, 754.16)" d="M 18 3 C 9.720000267028809 3 3 9.720000267028809 3 18 C 3 26.27999877929688 9.719999313354492 33 18 33 C 26.28000068664551 33 33 26.28000068664551 33 18 C 33 9.719999313354492 26.28000068664551 3 18 3 Z M 16.5 29.89500045776367 C 10.57499980926514 29.15999984741211 6 24.1200008392334 6 18 C 6 17.06999969482422 6.119999885559082 16.18499946594238 6.315000057220459 15.31500053405762 L 13.5 22.5 L 13.5 24 C 13.5 25.64999961853027 14.85000038146973 27 16.5 27 L 16.5 29.89500045776367 Z M 26.85000038146973 26.08500099182129 C 26.46000099182129 24.8700008392334 25.35000038146973 24 24 24 L 22.5 24 L 22.5 19.5 C 22.5 18.67499923706055 21.82500076293945 18 21 18 L 12 18 L 12 15 L 15 15 C 15.82499980926514 15 16.5 14.32499980926514 16.5 13.5 L 16.5 10.5 L 19.5 10.5 C 21.14999961853027 10.5 22.5 9.149999618530273 22.5 7.5 L 22.5 6.885000228881836 C 26.89500045776367 8.670000076293945 30 12.97500038146973 30 18 C 30 21.11999893188477 28.79999923706055 23.95499992370605 26.85000038146973 26.08499908447266 Z" fill="#c3cbce" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c736dg =
    '<svg viewBox="313.8 759.7 33.0 21.0" ><path transform="translate(312.3, 752.16)" d="M 24 16.5 C 26.48999977111816 16.5 28.48500061035156 14.48999977111816 28.48500061035156 12 C 28.48500061035156 9.510000228881836 26.48999977111816 7.5 24 7.5 C 21.51000022888184 7.5 19.5 9.510000228881836 19.5 12 C 19.5 14.48999977111816 21.51000022888184 16.5 24 16.5 Z M 12 16.5 C 14.48999977111816 16.5 16.48500061035156 14.48999977111816 16.48500061035156 12 C 16.48500061035156 9.510000228881836 14.48999977111816 7.5 12 7.5 C 9.510000228881836 7.5 7.5 9.510000228881836 7.5 12 C 7.5 14.48999977111816 9.510000228881836 16.5 12 16.5 Z M 12 19.5 C 8.505000114440918 19.5 1.5 21.2549991607666 1.5 24.75 L 1.5 28.5 L 22.5 28.5 L 22.5 24.75 C 22.5 21.25500106811523 15.49499988555908 19.5 12 19.5 Z M 24 19.5 C 23.56500053405762 19.5 23.06999969482422 19.53000068664551 22.54500007629395 19.57500076293945 C 24.28499984741211 20.83500099182129 25.5 22.53000068664551 25.5 24.75 L 25.5 28.5 L 34.5 28.5 L 34.5 24.75 C 34.5 21.25500106811523 27.49499893188477 19.5 24 19.5 Z" fill="#8bc6c0" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r9nal8 =
    '<svg viewBox="173.0 732.2 30.0 27.5" ><path transform="translate(170.0, 727.74)" d="M 18 32.02500152587891 L 15.82499980926514 30.04500198364258 C 8.100000381469727 23.04000091552734 3 18.42000007629395 3 12.75 C 3 8.130000114440918 6.630000114440918 4.5 11.25 4.5 C 13.85999965667725 4.5 16.36499977111816 5.715000152587891 18 7.635000228881836 C 19.63500022888184 5.715000152587891 22.13999938964844 4.5 24.75 4.5 C 29.3700008392334 4.5 33 8.130000114440918 33 12.75 C 33 18.42000007629395 27.89999961853027 23.04000091552734 20.17499923706055 30.05999946594238 L 18 32.02500152587891 Z" fill="#c2fff9" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
