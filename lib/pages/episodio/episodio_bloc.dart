import 'package:rickandmorty/pages/episodio/episodio.dart';
import 'package:rickandmorty/pages/episodio/episodio_api.dart';
import 'package:rickandmorty/utils/simple_bloc.dart';

class EpisodioBloc extends SimpleBloc<List<Episodio>> {
  List<Episodio> episodios;

  Future<List<Episodio>> fetch() async {
    try {
      episodios = await EpisodioApi.getEpisodios();

      add(episodios);
      return episodios;
    } catch (e) {
      addError(e);
    }
  }

  Future<List<Episodio>> getMore() async {
    try {
      List<Episodio> newEpisodios = await EpisodioApi.getMoreEpisodios();
      newEpisodios.forEach((episodio) {
        episodios.add(episodio);
      });

      add(episodios);
      return episodios;
    } catch (e) {
      addError(e);
    }
  }
}
