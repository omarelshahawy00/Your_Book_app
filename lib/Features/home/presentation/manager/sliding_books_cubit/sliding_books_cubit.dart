import 'package:bloc/bloc.dart';
import 'package:booking_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booking_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'sliding_books_state.dart';

class SlidingBooksCubit extends Cubit<SlidingBooksState> {
  SlidingBooksCubit(this.homeRepo) : super(SlidingBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSlidingBooks() async {
    print("Fetching sliding books...");
    var result = await homeRepo.fetchSlidingBooks();
    result.fold(
      (failure) {
        print("Fetch failed: ${failure.errMessage}");
        emit(SlidingBooksFailure(failure.errMessage));
      },
      (books) {
        print("Fetch successful, books retrieved: ${books.length}");
        emit(SlidingBooksSuccess(books));
      },
    );
  }
}
