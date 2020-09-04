import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rickandmorty/pages/episodio/episodio.dart';
import 'package:rickandmorty/pages/personagem/personagem_chips.dart';
import 'package:rickandmorty/utils/nav.dart';
import 'package:rickandmorty/widgets/text.dart';

class EpisodioCard extends StatelessWidget {
  Episodio episodio;
  EpisodioCard(this.episodio);
  DateFormat dateFormat = DateFormat("dd/MM/yyyy 'às' HH:mm:ss");
  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //   _onPressed(context);
      // },
      child: Card(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              text(
                episodio.name,
                bold: true,
                color: const Color(0xff8bc6c0),
                fontSize: 26,
              ),
              Row(
                children: <Widget>[
                  text('Episódio: ', bold: true),
                  text(episodio.episode),
                ],
              ),
              Row(
                children: <Widget>[
                  text('Data de lançamento: ', bold: true),
                  text(episodio.airDate),
                ],
              ),
              Row(
                children: <Widget>[
                  text('Data de criação: ', bold: true),
                  text(dateFormat.format(DateTime.parse(episodio.created))),
                ],
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text(
                      'DETALHES',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xff8bc6c0),
                      ),
                    ),
                    onPressed: () => _onPressed(context),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onPressed(BuildContext context) {
    push(context, PersonagemChips(episodio.characters, episodio.name));
  }
}
