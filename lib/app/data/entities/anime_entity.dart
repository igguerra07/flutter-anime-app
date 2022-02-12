import 'package:equatable/equatable.dart';

class AnimeEntity extends Equatable {
  final int id;
  final String title;

  const AnimeEntity({
    required this.id,
    required this.title,
  });
  
  @override
  List<Object?> get props => [id];
}
