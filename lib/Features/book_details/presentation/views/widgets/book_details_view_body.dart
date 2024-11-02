import 'package:booking_app/Features/book_details/presentation/views/widgets/book_details_section.dart';
import 'package:booking_app/Features/book_details/presentation/views/widgets/books_recommendation_list.dart';
import 'package:booking_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsSectiion(
                book: bookModel,
              ),
              const Expanded(
                child: SizedBox(
                  height: 30,
                ),
              ),
              const BooksRecommendationList(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        )
      ],
    );
  }
}
