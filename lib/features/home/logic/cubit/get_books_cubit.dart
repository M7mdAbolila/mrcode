
import 'package:bloc/bloc.dart';
import 'package:mrcode/features/home/data/repos/get_books_repo.dart';

import '../../data/models/get_books_response.dart';

part 'get_books_state.dart';

class GetBooksCubit extends Cubit<GetBooksState> {
  final GetBooksRepo _getBooksRepo;
  GetBooksCubit(this._getBooksRepo) : super(GetBooksInitial());

  Future<void> getBooks({required String category}) async {
    emit(GetBooksLoading());
    var result = await _getBooksRepo.getBooks(category);
    result.fold(
      (failure) => emit(
        GetBooksFailure(failure.errMessage),
      ),
      (books) => emit(
        GetBooksSuccess(books),
      ),
    );
  }
}
