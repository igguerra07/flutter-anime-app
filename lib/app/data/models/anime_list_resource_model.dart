import 'package:anime_app/app/data/models/anime_model.dart';

class AnimeResourceListModel {
  final List<AnimeModel> data;
  final dynamic pagination;

  AnimeResourceListModel({
    required this.data,
    required this.pagination,
  });

  factory AnimeResourceListModel.fromJson(Map<String, dynamic> json) {
    return AnimeResourceListModel(
      data: (json["data"] as List)
          .map((jsonItem) => AnimeModel.fromJson(jsonItem))
          .toList(),
      pagination: json["pagination"],
    );
  }
}
