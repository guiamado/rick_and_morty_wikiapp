import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rickandmorty/pages/personagem/personagem.dart';
import 'package:rickandmorty/widgets/app_bar_top.dart';
import 'package:rickandmorty/widgets/text.dart';
import 'package:translator/translator.dart';

class PersonagemPage extends StatefulWidget {
  Personagem personagem;
  PersonagemPage(this.personagem);
  @override
  _PersonagemPageState createState() => _PersonagemPageState();
}

class _PersonagemPageState extends State<PersonagemPage> {
  Personagem get personagem => widget.personagem;
  String genero;
  String especie;
  String status;
  bool isTranslationFinished = false;
  DateFormat dateFormat = DateFormat("dd/MM/yyyy 'às' HH:mm:ss");
  final translator = GoogleTranslator();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    traduzirCampos().then((value) {
      setState(() {
        isTranslationFinished = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: AppBarTop(personagem.name),
      ),
      backgroundColor: const Color(0xfff0f3f4),
      body: _body(),
    );
  }

  _body() {
    return Card(
      margin: EdgeInsets.all(6),
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            Image.network(
              personagem.image,
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            ),
            isTranslationFinished
                ? _bloco1()
                : Container(
                    padding: EdgeInsets.only(top: 16),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  _bloco1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 8),
            ),
            text(
              'Descrição sobre o personagem:',
              bold: true,
              fontSize: 22,
              color: const Color(0xff8bc6c0),
            ),
            Container(
              padding: EdgeInsets.only(top: 4),
            ),
            Row(
              children: <Widget>[
                text('Nome: ', bold: true),
                text(personagem.name),
              ],
            ),
            Row(
              children: <Widget>[
                text('Espécie: ', bold: true),
                text(especie),
              ],
            ),
            personagem.type.isNotEmpty
                ? Row(
                    children: <Widget>[
                      text('Tipo: ', bold: true),
                      text(personagem.type),
                    ],
                  )
                : Container(),
            Row(
              children: <Widget>[
                text('Gênero: ', bold: true),
                text(genero),
              ],
            ),
            Row(
              children: <Widget>[
                text('Status: ', bold: true),
                text(status),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 15.0,
                  width: 15.0,
                  decoration: BoxDecoration(
                      color: statusPersonagem(personagem.status),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: statusPersonagem(personagem.status),
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                        ),
                      ]),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                text('Origem: ', bold: true),
                text(personagem.origin.name == 'unknown'
                    ? 'Desconhecido'
                    : personagem.origin.name),
              ],
            ),
            Row(
              children: <Widget>[
                text('Dimensão: ', bold: true),
                text(personagem.location.name == 'unknown'
                    ? 'Desconhecido'
                    : personagem.location.name),
              ],
            ),
            Row(
              children: <Widget>[
                text('Data de criação: ', bold: true),
                text(dateFormat.format(DateTime.parse(personagem.created))),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 8),
            ),
            text(
              'Episódios que aparece:',
              bold: true,
              fontSize: 22,
              color: const Color(0xff8bc6c0),
            ),
            getEpisodiosAparecidos(),
          ],
        )
      ],
    );
  }

  Color statusPersonagem(String status) {
    if (status == 'Alive') {
      return Colors.green;
    }

    if (status == 'Dead') {
      return Colors.red;
    }

    return Colors.grey;
  }

  Widget getEpisodiosAparecidos() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: personagem.episode.map((item) => text(item)).toList());
  }

  Future<bool> traduzirCampos() async {
    genero = await traduzirString(personagem.gender);
    especie = await traduzirString(personagem.species);
    status = await traduzirString(personagem.status);
    return true;
  }

  traduzirString(String input) async {
    var stringTranslated =
        await translator.translate(input, from: 'en', to: 'pt');
    return stringTranslated.text;
    // String resultado;
    // translator.translate(input, from: 'en', to: 'pt').then((value) {
    //   resultado = value.text;
    //   print('valor >>> ${value.text}');
    //   // print('traduzido2 $resultado');
    // });
    // print('traduzido $resultado');
    // return resultado;
  }
}
