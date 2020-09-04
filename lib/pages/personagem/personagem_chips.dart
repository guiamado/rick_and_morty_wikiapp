import 'package:flutter/material.dart';
import 'package:rickandmorty/pages/personagem/personagem.dart';
import 'package:rickandmorty/pages/personagem/personagem_api.dart';
import 'package:rickandmorty/widgets/app_bar_top.dart';
import 'package:rickandmorty/widgets/text.dart';

class PersonagemChips extends StatefulWidget {
  List<String> personagensUrl;
  String title;
  PersonagemChips(this.personagensUrl, this.title);

  @override
  _PersonagemChipsState createState() => _PersonagemChipsState();
}

class _PersonagemChipsState extends State<PersonagemChips> {
  bool isPersonagensLoaded = false;
  List<String> get personagensUrl => widget.personagensUrl;
  List<Personagem> personagens = List<Personagem>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buscarPersonagens().then((value) {
      setState(() {
        isPersonagensLoaded = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: AppBarTop(widget.title),
      ),
      backgroundColor: const Color(0xfff0f3f4),
      body: isPersonagensLoaded
          ? _body()
          : Container(
              padding: EdgeInsets.only(top: 16),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
    );
  }

  _body() {
    return Card(
      margin: EdgeInsets.all(6),
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            _bloco1(),
          ],
        ),
      ),
    );
  }

  _bloco1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 8),
            ),
            text(
              'Personagens que aparecem:',
              bold: true,
              fontSize: 22,
              color: const Color(0xff8bc6c0),
            ),
            Container(
              padding: EdgeInsets.only(top: 4),
            ),
            getChipsPersonagens(),
          ],
        ),
      ],
    );
  }

  Future<bool> buscarPersonagens() async {
    for (var url in personagensUrl) {
      await PersonagemApi.getPersonagem(url).then((value) {
        personagens.add(value);
      });
    }

    return personagens.length > 0 ? true : false;
  }

  Widget getChipsPersonagens() {
    return Column(
        children: personagens
            .map((item) => chipPersonagem(item.name, item.image))
            .toList());
  }

  Widget chipPersonagem(name, image) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(
              image,
              width: 300,
              height: 200,
              fit: BoxFit.fill,
            ),
            Container(
              padding: EdgeInsets.only(top: 8),
            ),
            text(name, fontSize: 22),
          ],
        ),
      ),
    );
  }
}
