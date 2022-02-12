import 'package:equatable/equatable.dart';

import 'package:anime_app/app/data/entities/anime_entity.dart';

abstract class HomeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeInitialState extends HomeState {}

class HomeFailureState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {
  final List<AnimeEntity> animes;
  
  HomeSuccessState({
    required this.animes,
  });

  @override
  List<Object?> get props => [animes];
}
