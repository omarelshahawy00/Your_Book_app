import 'package:booking_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booking_app/Features/home/data/repos/home_repo.dart';
import 'package:booking_app/core/errors/failure.dart';
import 'package:booking_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.getBooksData(
          endPoint: 'volumes?filtering=dragons&q=A Song of Ice and Fire');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailer.fromDioError(e));
      }
      return left(ServerFailer(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSlidingBooks() async {
    try {
      var data = await apiService.getBooksData(
          endPoint:
              'volumes?filtering=dragons&q=A Song of Ice and Fire Box Set');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailer.fromDioError(e));
      }
      return left(ServerFailer(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchRecommendationBooks(
      {required String category}) async {
    try {
      var data = await apiService.getBooksData(
          endPoint:
              'volumes?filtering=dragons&q=A Song of Ice and Fire Box Set');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailer.fromDioError(e));
      }
      return left(ServerFailer(e.toString()));
    }
  }
}
