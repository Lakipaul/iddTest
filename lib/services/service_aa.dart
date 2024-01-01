import 'package:dio/dio.dart';
import 'package:idd/models/post_model.dart';
import 'package:retrofit/retrofit.dart';

part 'service_aa.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class ServiceAA {
  factory ServiceAA(Dio dio) = _ServiceAA;

  @GET("posts")
  Future<List<PostModel>> agentHolidays();
}
