import 'dart:convert';

import 'package:cat_fact_application/data/services/network_services.dart';
import 'package:http/http.dart';

class NetworkServicesImpl implements CatFactDataSource, CatImageDataSource {
  static const _factBaseUrl = "https://cat-fact.herokuapp.com";
  static const _factApiUrl = "$_factBaseUrl/facts";
  static const _factRandomUrl = "$_factApiUrl/random";

  static const _imageBaseUrl = "https://cataas.com";
  static const _imageApiUrl = "$_imageBaseUrl/cat";

  @override
  Future<String> fetchFacts() async {
    final url = Uri.parse(_factRandomUrl);
    final response = await get(url);
    final map = jsonDecode(response.body);
    final fact = map["text"];
    return fact;
  }

  @override
  Future fetchImage() async {
    final imageUrl = Uri.parse(_imageApiUrl);
    final response = await get(imageUrl);
    final map = jsonDecode(response.bodyBytes);
  }
}
