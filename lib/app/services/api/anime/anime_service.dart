import 'package:anime_app/app/data/models/anime_list_resource_model.dart';

class ApiConstants {
  static const baseUrl = "https://api.jikan.moe/v4";
  static const getTopAnimes = "/top/anime";
}

abstract class AnimeService {
  Future<AnimeResourceListModel> getTopAnimes();
}
