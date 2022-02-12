import 'package:anime_app/app/data/data_sources/remote/anime_remote_data.dart';
import 'package:anime_app/app/data/models/anime_list_resource_model.dart';
import 'package:anime_app/app/services/api/anime/anime_service.dart';

class AnimeRemoteDataSourceImpl implements AnimeRemoteDataSource {
  late final AnimeService _animeService;

  AnimeRemoteDataSourceImpl({
    required AnimeService animeService,
  }) {
    _animeService = animeService;
  }

  @override
  Future<AnimeResourceListModel> getTopAnimes() => _animeService.getTopAnimes();
}
