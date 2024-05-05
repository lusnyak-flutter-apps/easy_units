import 'package:dio/dio.dart';
import 'package:easy_units/core/network/interceptors/api_logging_interceptor.dart';
import 'package:injectable/injectable.dart';

import '../constants/api_constants.dart';

@module
abstract class DioClient {
  @Named("baseUrl")
  String get baseUrl => APIBase.url;

  @lazySingleton
  Dio dio(@Named('baseUrl') String url) => Dio(BaseOptions(baseUrl: url))
    ..interceptors.addAll([
      ApiLoggingInterceptor(),
    ]);
}
