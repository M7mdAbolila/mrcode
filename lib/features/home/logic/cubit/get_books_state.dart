part of 'get_books_cubit.dart';

sealed class GetBooksState {}

final class GetBooksInitial extends GetBooksState {}

final class GetBooksLoading extends GetBooksState {}

final class GetBooksSuccess extends GetBooksState {
  final List<BookModel>? books;
  GetBooksSuccess(this.books);
}

final class GetBooksFailure extends GetBooksState {
  final String? errMessage;

  GetBooksFailure(this.errMessage);
}
