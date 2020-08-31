import 'dart:convert' as convert;
import 'dart:io';
import 'package:rickandmorty/pages/personagem/personagem.dart';
import 'package:rickandmorty/utils/http_helper.dart' as http;

class PersonagemApi {
  static Future<List<Personagem>> getPersonagens() async {
    print('entrou aqui tbm');
    var url = 'https://rickandmortyapi.com/api/character/';

    var response = await http.get(url);

    String json = response.body;

    Map<String, dynamic> jsonDecoded = convert.json.decode(json);

    List<Personagem> personagens = jsonDecoded['results']
        .map<Personagem>((map) => Personagem.fromJson(map))
        .toList();

    return personagens;
  }
}
