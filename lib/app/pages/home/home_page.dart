import 'package:anime_app/app/core/di/injector.dart';
import 'package:anime_app/app/pages/home/cubit/home_cubit.dart';
import 'package:anime_app/app/pages/home/cubit/home_state.dart';
import 'package:anime_app/app/pages/home/resources/home_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  final HomeCubit _homeCubit = getIt();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(HomeStringsResource.appBarTitle),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        bloc: _homeCubit..getTopAnimes(),
        builder: (_, state) {
          if (state is HomeLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is HomeSuccessState) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(16),
                    itemCount: state.animes.length,
                    itemBuilder: (_, index) => Card(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(4),
                        onTap: () => {},
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Text(state.animes[index].title),
                        ),
                      ),
                    ),
                    separatorBuilder: (_, __) => const SizedBox(width: 9),
                  )
                ],
              ),
            );
          }

          if (state is HomeFailureState) {
            return const Center(
              child: Text("Request failure"),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
