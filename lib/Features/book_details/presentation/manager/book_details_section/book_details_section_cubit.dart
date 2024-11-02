import 'package:bloc/bloc.dart';
import 'package:booking_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booking_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'book_details_section_state.dart';

class BookDetailsSectionCubit extends Cubit<BookDetailsSectionState> {
  BookDetailsSectionCubit(this.homeRepo) : super(BookDetailsSectionInitial());

  final HomeRepo homeRepo;

  Future<void> fetchRecommendationBookDetails(
      {required String category}) async {
    var result = await homeRepo.fetchRecommendationBooks(category: category);
    result.fold(
      (failure) {
        emit(BookDetailsSectionFailure(failure.errMessage));
      },
      (books) {
        emit(BookDetailsSectionSuccess(books));
      },
    );
  }
}
