import 'package:anime_app/app/data/entities/anime_entity.dart';

class AnimeModel extends AnimeEntity {
  const AnimeModel({
    required int malId,
    required String title,
  }) : super(id: malId, title: title);

  factory AnimeModel.fromJson(Map<String, dynamic> json) {
    return AnimeModel(
      malId: json['mal_id'],
      title: json['title'],
    );
  }
}
