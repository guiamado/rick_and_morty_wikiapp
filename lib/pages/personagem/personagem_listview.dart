import 'package:flutter/material.dart';
import 'package:rickandmorty/pages/personagem/personagem.dart';
import 'package:rickandmorty/pages/personagem/personagem_card.dart';

class PersonagemListView extends StatelessWidget {
  List<Personagem> personagens;
  PersonagemListView(this.personagens);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 90),
      child: ListView.builder(
        itemCount: personagens != null ? personagens.length : 0,
        itemBuilder: (context, index) {
          Personagem personagem = personagens[index];
          return PersonagemCard(personagem);
        },
      ),
    );
  }
}
