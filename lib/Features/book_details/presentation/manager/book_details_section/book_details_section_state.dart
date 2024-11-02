part of 'book_details_section_cubit.dart';

sealed class BookDetailsSectionState extends Equatable {
  const BookDetailsSectionState();

  @override
  List<Object> get props => [];
}

final class BookDetailsSectionInitial extends BookDetailsSectionState {}

final class BookDetailsSectionLoading extends BookDetailsSectionState {}

final class BookDetailsSectionSuccess extends BookDetailsSectionState {
  final List<BookModel> books;

  const BookDetailsSectionSuccess(this.books);
}

final class BookDetailsSectionFailure extends BookDetailsSectionState {
  final String errMessage;

  const BookDetailsSectionFailure(this.errMessage);
}
