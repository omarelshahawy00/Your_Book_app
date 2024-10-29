import 'package:bloc/bloc.dart';
import 'package:booking_app/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'sliding_books_state.dart';

class SlidingBooksCubit extends Cubit<SlidingBooksState> {
  SlidingBooksCubit() : super(SlidingBooksInitial());
}
