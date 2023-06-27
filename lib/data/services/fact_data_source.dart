import 'dart:convert';

import 'package:http/http.dart';

abstract interface class CatFactDataSource {
  Future<String> fetchFacts();
}

class CatFactDataSourceImpl implements CatFactDataSource {
  static const _factBaseUrl = "https://cat-fact.herokuapp.com";
  static const _factApiUrl = "$_factBaseUrl/facts";
  static const _factRandomUrl = "$_factApiUrl/random";

  @override
  Future<String> fetchFacts() async {
    final url = Uri.parse(_factRandomUrl);
    final response = await get(url);
    final map = jsonDecode(response.body);
    final fact = map["text"];
    return fact;
  }
}
