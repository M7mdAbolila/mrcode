import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mrcode/core/networking/api_service.dart';
import 'package:mrcode/core/networking/dio_factory.dart';
import 'package:mrcode/features/home/data/repos/get_books_repo.dart';
import 'package:mrcode/features/home/logic/cubit/get_books_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // get books
  getIt.registerLazySingleton<GetBooksRepo>(() => GetBooksRepo(getIt()));
  getIt.registerFactory<GetBooksCubit>(() => GetBooksCubit(getIt()));
}
