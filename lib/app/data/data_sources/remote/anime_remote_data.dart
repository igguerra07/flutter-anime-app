import 'package:anime_app/app/data/models/anime_list_resource_model.dart';

abstract class AnimeRemoteDataSource {
  Future<AnimeResourceListModel> getTopAnimes();
}
