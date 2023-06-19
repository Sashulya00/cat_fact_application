abstract interface class CatFactDataSource {
  Future<String> fetchFacts();
}

abstract interface class CatImageDataSource {
  Future<dynamic> fetchImage();
}
