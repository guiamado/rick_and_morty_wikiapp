import 'package:flutter/material.dart';
import 'package:rickandmorty/pages/episodio/episodio.dart';
import 'package:rickandmorty/pages/episodio/episodio_card.dart';

class EpisodioListView extends StatefulWidget {
  List<Episodio> episodios;
  Function scrollGetMore;
  EpisodioListView(this.episodios, this.scrollGetMore);
  @override
  _EpisodioListViewState createState() => _EpisodioListViewState();
}

class _EpisodioListViewState extends State<EpisodioListView> {
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
        itemCount: widget.episodios != null ? widget.episodios.length : 0,
        itemBuilder: (context, index) {
          Episodio episodio = widget.episodios[index];
          return EpisodioCard(episodio);
        },
      ),
    );
  }
}
