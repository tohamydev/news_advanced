



import 'package:dio/dio.dart';
import 'package:news/core/network/dio_helper/endpoints.dart';
import 'package:news/features/home/data/model/post_data_request_body.dart';
import 'package:news/features/home/data/model/top_headlines_response.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

 ///
@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ApiServices{

  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @GET(EndPoints.topHeadLines)
  Future<TopHeadlinesResponse> getTopHeadlines(@Query('sources') String sources, @Query('apiKey') String api);

  @POST(EndPoints.topHeadLines)
  Future<TopHeadlinesResponse> postTopHeadlines(@Body() PostDataRequestBody body , @Header('Authorization') String token);





}