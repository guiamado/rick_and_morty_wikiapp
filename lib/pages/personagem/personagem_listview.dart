import 'package:flutter/material.dart';
import 'package:rickandmorty/pages/personagem/personagem.dart';
import 'package:rickandmorty/pages/personagem/personagem_card.dart';
import 'package:rickandmorty/pages/personagem/personagens_bloc.dart';

class PersonagemListView extends StatefulWidget {
  List<Personagem> personagens;
  Function scrollGetMore;
  PersonagemListView(this.personagens, this.scrollGetMore);

  @override
  _PersonagemListViewState createState() => _PersonagemListViewState();
}

class _PersonagemListViewState extends State<PersonagemListView> {
  ScrollController _controller;

  _scrollListener() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      widget.scrollGetMore();
    }
  }

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 90),
      child: ListView.builder(
        controller: _controller,
        itemCount: widget.personagens != null ? widget.personagens.length : 0,
        itemBuilder: (context, index) {
          Personagem personagem = widget.personagens[index];
          return PersonagemCard(personagem);
        },
      ),
    );
  }
}
