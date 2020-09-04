import 'dart:convert' as convert;
import 'package:rickandmorty/pages/dimensao/dimensao.dart';
import 'package:rickandmorty/utils/info.dart';
import 'package:rickandmorty/utils/http_helper.dart' as http;

class DimensaoApi {
  static Info informacoes;
  static Future<List<Dimensao>> getDimensoes() async {
    var url = 'https://rickandmortyapi.com/api/location/';

    var response = await http.get(url);

    String json = response.body;

    Map<String, dynamic> jsonDecoded = convert.json.decode(json);
    informacoes = Info.fromJson(jsonDecoded['info']);
    List<Dimensao> dimensoes = jsonDecoded['results']
        .map<Dimensao>((map) => Dimensao.fromJson(map))
        .toList();

    return dimensoes;
  }

  static Future<List<Dimensao>> getMoreDimensoes() async {
    var url = informacoes.next;

    var response = await http.get(url);

    String json = response.body;

    Map<String, dynamic> jsonDecoded = convert.json.decode(json);
    informacoes = Info.fromJson(jsonDecoded['info']);
    List<Dimensao> dimensoes = jsonDecoded['results']
        .map<Dimensao>((map) => Dimensao.fromJson(map))
        .toList();

    return dimensoes;
  }
}
