import 'package:flutter/material.dart';

import 'package:rickandmorty/pages/personagem/personagem.dart';

class PersonagemCard extends StatelessWidget {
  Personagem personagem;
  PersonagemCard(this.personagem);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //   _onPressed(context, page);
      // },
      child: Card(
        child: Container(
          padding: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Center(
                    child: Image.network(
                      personagem.image,
                      width: 350,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.all(12),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        personagem.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
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

  _onPressed(BuildContext context) {}
}
