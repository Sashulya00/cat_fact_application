import 'dart:typed_data';

abstract class Repository {
  Future<String> fetchFacts();

  Future<Uint8List> fetchImage();
}
