import 'dart:convert';

import 'package:anime_app/app/data/models/anime_list_resource_model.dart';
import 'package:anime_app/app/services/api/anime/anime_service.dart';
import 'package:anime_app/app/services/api/api_client.dart';

class AnimeApi implements AnimeService {
  late final ApiClient _apiClient;

  AnimeApi({
    required ApiClient apiClient,
  }) {
    _apiClient = apiClient;
  }

  @override
  Future<AnimeResourceListModel> getTopAnimes() async {
    final response = await _apiClient.get(path: ApiConstants.getTopAnimes);
    final json = jsonDecode(response);
    return AnimeResourceListModel.fromJson(json);
  }
}
