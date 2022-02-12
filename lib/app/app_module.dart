import 'package:anime_app/app/core/di/injector.dart';
import 'package:anime_app/app/data/data_sources/remote/anime_remote_data.dart';
import 'package:anime_app/app/data/data_sources/remote/anime_remote_data_impl.dart';
import 'package:anime_app/app/data/repositories/anime_repository.dart';
import 'package:anime_app/app/data/repositories/anime_repository_impl.dart';
import 'package:anime_app/app/services/api/anime/anime_api.dart';
import 'package:anime_app/app/services/api/anime/anime_service.dart';
import 'package:anime_app/app/services/api/api_client.dart';
import 'package:anime_app/app/services/api/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  ApiClient get apiClient => DioClient(
        dio: getIt(),
        baseUrl: ApiConstants.baseUrl,
      );

  @lazySingleton
  AnimeService get animeService => AnimeApi(
        apiClient: getIt(),
      );

  @lazySingleton
  AnimeRemoteDataSource get animeRemoteData => AnimeRemoteDataSourceImpl(
        animeService: getIt(),
      );
      
  @lazySingleton
  AnimeRepository get animeRepository => AnimeRepositoryImpl(
        remote : getIt(),
      );
}
