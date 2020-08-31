import 'package:flutter/material.dart';
import 'package:rickandmorty/design/Dimensoes.dart';
import 'package:rickandmorty/design/Episodios.dart';
import 'package:rickandmorty/design/Personagens.dart';
import 'package:rickandmorty/pages/home/home_card.dart';

class HomeListView extends StatefulWidget {
  @override
  _HomeListViewState createState() => _HomeListViewState();
}

class _HomeListViewState extends State<HomeListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[
          HomeCard(
            page: Personagens(),
            imgPath: 'assets/images/charsHome.jpg',
            titleCard: 'Personagens',
          ),
          HomeCard(
            page: Dimensoes(),
            imgPath: 'assets/images/dimensionsHome.png',
            titleCard: 'Dimensões',
          ),
          HomeCard(
            page: Episodios(),
            imgPath: 'assets/images/IceCreamSplash.jpg',
            titleCard: 'Episódios',
          ),
          Container(
            height: 70,
          )
        ],
      ),
    );
  }
}
