import 'dart:convert' as convert;
import 'dart:io';
import 'package:rickandmorty/pages/personagem/personagem.dart';
import 'package:rickandmorty/utils/http_helper.dart' as http;
import 'package:rickandmorty/utils/info.dart';

class PersonagemApi {
  static Info informacoes;
  static Future<List<Personagem>> getPersonagens() async {
    var url = 'https://rickandmortyapi.com/api/character/';

    var response = await http.get(url);

    String json = response.body;

    Map<String, dynamic> jsonDecoded = convert.json.decode(json);
    informacoes = Info.fromJson(jsonDecoded['info']);
    List<Personagem> personagens = jsonDecoded['results']
        .map<Personagem>((map) => Personagem.fromJson(map))
        .toList();

    return personagens;
  }

  static Future<List<Personagem>> getMorePersonagens() async {
    var url = informacoes.next;

    var response = await http.get(url);

    String json = response.body;

    Map<String, dynamic> jsonDecoded = convert.json.decode(json);
    informacoes = Info.fromJson(jsonDecoded['info']);
    List<Personagem> personagens = jsonDecoded['results']
        .map<Personagem>((map) => Personagem.fromJson(map))
        .toList();

    return personagens;
  }

  static Future<Personagem> getPersonagem(String url) async {
    // var url = 'https://rickandmortyapi.com/api/character/';

    var response = await http.get(url);

    String json = response.body;

    Map<String, dynamic> jsonDecoded = convert.json.decode(json);
    Personagem personagem = Personagem.fromJson(jsonDecoded);

    return personagem;
  }
}
