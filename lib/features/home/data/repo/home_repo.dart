import 'package:dio/dio.dart';
import 'package:news/core/network/dio_helper/api_result.dart';
import 'package:news/core/network/dio_helper/api_services.dart';
import 'package:news/core/network/dio_helper/endpoints.dart';
import 'package:news/features/home/data/model/post_data_request_body.dart';
import 'package:news/features/home/data/model/top_headlines_response.dart';

class HomeRepo {
  ApiServices _apiServices;

  HomeRepo(this._apiServices);

  Future<ApiResult<TopHeadlinesResponse>> getTopHeadLines() async {
    try {
      final response =
          await _apiServices.getTopHeadlines("techcrunch", EndPoints.apiKey);
      return ApiResult.success(response);
    } on DioException catch (error) {
      return ApiResult.error(error.response?.data);
    }
  }

  Future<ApiResult<TopHeadlinesResponse>> postData(PostDataRequestBody body) async {
    // cache helper here
    try {
      final response =
          await _apiServices.postTopHeadlines(body , EndPoints.apiKey);
      return ApiResult.success(response);
    } on DioException catch (error) {
      return ApiResult.error(error.response?.data);
    }
  }



}
