part of 'sliding_books_cubit.dart';

sealed class SlidingBooksState extends Equatable {
  const SlidingBooksState();

  @override
  List<Object> get props => [];
}

final class SlidingBooksInitial extends SlidingBooksState {}

final class SlidingBooksLoading extends SlidingBooksState {}

final class SlidingBooksSuccess extends SlidingBooksState {
  final List<BookModel> books;

  const SlidingBooksSuccess(this.books);
}

final class SlidingBooksFailure extends SlidingBooksState {
  final String errMessage;

  const SlidingBooksFailure(this.errMessage);
}
