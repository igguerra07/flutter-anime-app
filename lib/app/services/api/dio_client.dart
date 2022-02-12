import 'dart:convert';

import 'package:anime_app/app/services/api/api_client.dart';
import 'package:dio/dio.dart';

class DioClient implements ApiClient {
  late final Dio _dio;

  DioClient({
    required Dio dio,
    required String baseUrl,
  }) {
    _dio = dio;

    _dio.options.baseUrl = baseUrl;

    _dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    //for testing
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  @override
  Future get({
    required String path,
    Map<String, dynamic> queryParams = const {},
  }) async {
    final response = await _dio.get(path, queryParameters: queryParams);
    final jsonData = jsonEncode(response.data);
    return jsonData;
  }
}
