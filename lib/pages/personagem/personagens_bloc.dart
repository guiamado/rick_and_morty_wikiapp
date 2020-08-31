import 'package:rickandmorty/pages/personagem/personagem.dart';
import 'package:rickandmorty/pages/personagem/personagem_api.dart';
import 'package:rickandmorty/utils/simple_bloc.dart';

class PersonagensBloc extends SimpleBloc<List<Personagem>> {
  Future<List<Personagem>> fetch() async {
    try {
      List<Personagem> personagens = await PersonagemApi.getPersonagens();

      add(personagens);
      return personagens;
    } catch (e) {
      addError(e);
    }
  }
}
