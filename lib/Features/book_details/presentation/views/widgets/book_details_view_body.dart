import 'package:booking_app/Features/book_details/presentation/views/widgets/book_details_section.dart';
import 'package:booking_app/Features/book_details/presentation/views/widgets/books_recommendation_list.dart';
import 'package:booking_app/Features/book_details/presentation/views/widgets/free_preview_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsSectiion(),
              Expanded(
                child: SizedBox(
                  height: 30,
                ),
              ),
              BooksRecommendationList(),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        )
      ],
    );
  }
}
