import 'package:anime_app/app/data/repositories/anime_repository.dart';
import 'package:anime_app/app/pages/home/cubit/home_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  late final AnimeRepository _animeRepository;

  HomeCubit({
    required AnimeRepository animeRepository,
  }) : super(HomeInitialState()) {
    _animeRepository = animeRepository;
  }

  Future<void> getTopAnimes() async {
    emit(HomeLoadingState());
    final eitherResponse = await _animeRepository.getTopAnimes();
    eitherResponse.fold(
      (appError) => emit(HomeFailureState()),
      (response) => emit(HomeSuccessState(animes: response.data)),
    );
  }
}
