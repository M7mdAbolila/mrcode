import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mrcode/core/networking/api_service.dart';
import 'package:mrcode/core/networking/server_failure.dart';
import 'package:mrcode/features/home/data/models/get_books_response.dart';

class GetBooksRepo {
  final ApiService _apiService;
  GetBooksRepo(this._apiService);
  Future<Either<Failure, List<BookModel>?>> getBooks(String category) async {
    try {
      var response = await _apiService.getBooks(category);
      log('response : ${response.toString()}');
      return right(response.booksList);
    } catch (e) {
      if (e is DioException) {
        log('dio expception : ${e.message}');
        return left(
          ServerFailure.fromDioError(e),
        );
      } else {
        log('exception : ${e.toString()}');
        return left(
          ServerFailure(
            e.toString(),
          ),
        );
      }
    }
  }
}
