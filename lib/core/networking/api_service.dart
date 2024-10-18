import 'package:dio/dio.dart';
import 'package:mrcode/core/networking/api_constants.dart';
import 'package:retrofit/http.dart';

import '../../features/home/data/models/get_books_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET(ApiConstants.getBooks)
  Future<GetBooksResponse> getBooks(
    @Query('q') String category,
  );
}
