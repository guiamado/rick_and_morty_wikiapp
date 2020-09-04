import 'package:rickandmorty/pages/dimensao/dimensao.dart';
import 'package:rickandmorty/pages/dimensao/dimensao_api.dart';
import 'package:rickandmorty/utils/simple_bloc.dart';

class DimensaoBloc extends SimpleBloc<List<Dimensao>> {
  List<Dimensao> dimensoes;
  Future<List<Dimensao>> fetch() async {
    try {
      dimensoes = await DimensaoApi.getDimensoes();

      add(dimensoes);
      return dimensoes;
    } catch (e) {
      addError(e);
    }
  }

  Future<List<Dimensao>> getMore() async {
    try {
      List<Dimensao> newDimensoes = await DimensaoApi.getMoreDimensoes();
      newDimensoes.forEach((dimensao) {
        dimensoes.add(dimensao);
      });

      add(dimensoes);
      return dimensoes;
    } catch (e) {
      addError(e);
    }
  }
}
