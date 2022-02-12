import 'package:anime_app/app/app_widget.dart';
import 'package:anime_app/app/core/di/injector.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(const AnimeApp());
}
