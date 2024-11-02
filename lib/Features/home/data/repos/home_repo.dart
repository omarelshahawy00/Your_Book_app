import 'package:booking_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booking_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchSlidingBooks();
  Future<Either<Failure, List<BookModel>>> fetchRecommendationBooks(
      {required String category});
}
