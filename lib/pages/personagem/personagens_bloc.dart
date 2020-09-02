import 'package:rickandmorty/pages/personagem/personagem.dart';
import 'package:rickandmorty/pages/personagem/personagem_api.dart';
import 'package:rickandmorty/utils/simple_bloc.dart';

class PersonagensBloc extends SimpleBloc<List<Personagem>> {
  List<Personagem> personagens;
  Future<List<Personagem>> fetch() async {
    try {
      personagens = await PersonagemApi.getPersonagens();

      add(personagens);
      return personagens;
    } catch (e) {
      addError(e);
    }
  }

  Future<List<Personagem>> getMore() async {
    try {
      List<Personagem> newPersonagens =
          await PersonagemApi.getMorePersonagens();
      newPersonagens.forEach((personagem) {
        personagens.add(personagem);
      });

      add(personagens);
      return personagens;
    } catch (e) {
      addError(e);
    }
  }
}
