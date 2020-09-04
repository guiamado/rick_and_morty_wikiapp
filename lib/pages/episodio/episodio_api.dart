import 'dart:convert' as convert;
import 'package:rickandmorty/pages/episodio/episodio.dart';
import 'package:rickandmorty/utils/info.dart';
import 'package:rickandmorty/utils/http_helper.dart' as http;

class EpisodioApi {
  static Info informacoes;

  static Future<List<Episodio>> getEpisodios() async {
    var url = 'https://rickandmortyapi.com/api/episode/';

    var response = await http.get(url);

    String json = response.body;

    Map<String, dynamic> jsonDecoded = convert.json.decode(json);
    informacoes = Info.fromJson(jsonDecoded['info']);
    List<Episodio> episodios = jsonDecoded['results']
        .map<Episodio>((map) => Episodio.fromJson(map))
        .toList();

    return episodios;
  }

  static Future<List<Episodio>> getMoreEpisodios() async {
    var url = informacoes.next;

    var response = await http.get(url);

    String json = response.body;

    Map<String, dynamic> jsonDecoded = convert.json.decode(json);
    informacoes = Info.fromJson(jsonDecoded['info']);
    List<Episodio> episodios = jsonDecoded['results']
        .map<Episodio>((map) => Episodio.fromJson(map))
        .toList();

    return episodios;
  }
}
