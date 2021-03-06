import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import 'package:mds_pokemonTCG/model/poke_model.dart';

const String baseUrl = "https://api.pokemontcg.io/v1/cards?name=";

Future<PokeModel> getPokeInfo(pokeName) async {
  var rep = await http.get(baseUrl + pokeName);

  log('call : ' + baseUrl + pokeName);

  Map<String, dynamic> responseJson = jsonDecode(rep.body);

  return PokeModel.fromJSON(responseJson);
  // return (responseJson).toString()
}
