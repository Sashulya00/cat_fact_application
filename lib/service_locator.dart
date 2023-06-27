import 'package:cat_fact_application/data/repository/repository.dart';
import 'package:cat_fact_application/data/repository/repository_impl.dart';
import 'package:cat_fact_application/data/services/fact_data_source.dart';
import 'package:cat_fact_application/data/services/image_data_source.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  CatFactDataSource catFactDataSource = CatFactDataSourceImpl();
  CatImageDataSource catImageDataSource = CatImageDataSourceImpl();

  getIt.registerSingleton<CatFactDataSource>(catFactDataSource);
  getIt.registerSingleton<CatImageDataSource>(catImageDataSource);

  getIt.registerSingleton<Repository>(
    RepositoryImpl(
      getIt<CatFactDataSource>(),
      getIt<CatImageDataSource>(),
    ),
  );
}
