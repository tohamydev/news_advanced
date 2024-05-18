
import 'package:dio/dio.dart';
import 'package:news/core/network/dio_helper/endpoints.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// A helper class for making HTTP requests using Dio.
class DioHelper {
  static  Dio ? dio;

  /// Initialize Dio with base options and add interceptors.
  static Future<Dio> getDio() async {
    if (dio != null) {
      return dio!;
    } else {
      addIterceptors();
      return dio = Dio(
        BaseOptions(
          baseUrl: EndPoints.baseUrl,
          headers: {
            'Content-Type': 'application/json',
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE,PATCH,OPTIONS'
          },
        ),
      );

    }

  }

  static void addIterceptors() {
    dio?.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      error: true,
      compact: true,
    ));
  }

}
