import 'package:booking_app/Features/book_details/presentation/views/widgets/books_recommendation_list.dart';
import 'package:booking_app/Features/book_details/presentation/views/widgets/free_preview_item.dart';
import 'package:booking_app/Features/home/presentation/views/widgets/book_rating_item.dart';
import 'package:booking_app/Features/home/presentation/views/widgets/sliding_item.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 250,
                child: Center(
                  child: SlidingItem(
                    hasIconButton: false,
                  ),
                ),
              ),
            ),
            const Text(
              'Spider-Man-3',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle30,
            ),
            Text(
              'Author of the book',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:
                  Styles.textStyle16.copyWith(color: const Color(0xFFB2B0B7)),
            ),
            const SizedBox(
              height: 10,
            ),
            const BookRatingItem(),
            const SizedBox(
              height: 30,
            ),
            const FreePreviewItem(),
            const SizedBox(
              height: 40,
            ),
            const BooksRecommendationList(),
          ],
        ),
      ],
    );
  }
}
