import 'package:flutter/material.dart';

import 'package:rickandmorty/pages/dimensao/dimensao.dart';
import 'package:rickandmorty/pages/dimensao/dimensao_card.dart';

class DimensaoListView extends StatefulWidget {
  List<Dimensao> dimensoes;
  Function scrollGetMore;
  DimensaoListView(this.dimensoes, this.scrollGetMore);
  @override
  _DimensaoListViewState createState() => _DimensaoListViewState();
}

class _DimensaoListViewState extends State<DimensaoListView> {
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
        itemCount: widget.dimensoes != null ? widget.dimensoes.length : 0,
        itemBuilder: (context, index) {
          Dimensao dimensao = widget.dimensoes[index];
          return DimensaoCard(dimensao);
        },
      ),
    );
  }
}
