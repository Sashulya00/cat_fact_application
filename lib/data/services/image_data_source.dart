import 'dart:typed_data';

import 'package:http/http.dart';

abstract interface class CatImageDataSource {
  Future<Uint8List> fetchImage();
}

class CatImageDataSourceImpl implements CatImageDataSource {
  static const _imageBaseUrl = "https://cataas.com";
  static const _imageApiUrl = "$_imageBaseUrl/cat";

  @override
  Future<Uint8List> fetchImage() async {
    final imageUrl = Uri.parse(_imageApiUrl);
    final response = await get(imageUrl);
    final map = response.bodyBytes;
    return map;
  }
}
