import 'package:anime_app/app/data/entities/app_error.dart';
import 'package:anime_app/app/data/models/anime_list_resource_model.dart';
import 'package:dartz/dartz.dart';

abstract class AnimeRepository {
  Future<Either<AppError, AnimeResourceListModel>> getTopAnimes();
}
