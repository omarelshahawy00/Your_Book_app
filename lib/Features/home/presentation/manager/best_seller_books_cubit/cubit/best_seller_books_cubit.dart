import 'package:bloc/bloc.dart';
import 'package:booking_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booking_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.homeRepo) : super(BestSellerBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchBestSellerBook() async {
    emit(BestSellerBooksLoading());
    var result = await homeRepo.fetchBestSellerBooks();

    result.fold(
      (failure) {
        emit(BestSellerBooksFailure(failure.errMessage));
      },
      (books) {
        emit(BestSellerBooksSuccess(books));
      },
    );
  }
}
