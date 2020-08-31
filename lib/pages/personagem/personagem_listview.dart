import 'package:flutter/material.dart';
import 'package:rickandmorty/pages/personagem/personagem.dart';

class PersonagemListView extends StatelessWidget {
  List<Personagem> personagens;
  PersonagemListView(this.personagens);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView.builder(
        itemCount: personagens != null ? personagens.length : 0,
        itemBuilder: (context, index) {
          Personagem personagem = personagens[index];
          return Text(
            personagem.name,
            // textAlign: TextAlign.center,
          );
        },
      ),
    );
  }
}
