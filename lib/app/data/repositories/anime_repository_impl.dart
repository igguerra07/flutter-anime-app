import 'package:anime_app/app/data/data_sources/remote/anime_remote_data.dart';
import 'package:anime_app/app/data/entities/app_error.dart';
import 'package:anime_app/app/data/models/anime_list_resource_model.dart';
import 'package:anime_app/app/data/repositories/anime_repository.dart';
import 'package:dartz/dartz.dart';

class AnimeRepositoryImpl implements AnimeRepository {
  late final AnimeRemoteDataSource _api;

  AnimeRepositoryImpl({
    required AnimeRemoteDataSource remote,
  }) {
    _api = remote;
  }

  @override
  Future<Either<AppError, AnimeResourceListModel>> getTopAnimes() async {
    try {
      final response = await _api.getTopAnimes();
      return right(response);
    } catch (e) {
      return left(AppError());
    }
  }
}
