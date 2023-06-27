import 'dart:typed_data';

import 'package:cat_fact_application/data/repository/repository.dart';
import 'package:cat_fact_application/data/services/fact_data_source.dart';
import 'package:cat_fact_application/data/services/image_data_source.dart';

class RepositoryImpl implements Repository {
  RepositoryImpl(this.catFactDataSource, this.catImageDataSource);

  final CatFactDataSource catFactDataSource;
  final CatImageDataSource catImageDataSource;

  @override
  Future<String> fetchFacts() => catFactDataSource.fetchFacts();

  @override
  Future<Uint8List> fetchImage() => catImageDataSource.fetchImage();
}
