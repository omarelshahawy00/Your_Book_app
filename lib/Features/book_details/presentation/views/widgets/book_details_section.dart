import 'package:booking_app/Features/book_details/presentation/views/widgets/free_preview_item.dart';
import 'package:booking_app/Features/home/presentation/views/widgets/book_rating_item.dart';
import 'package:booking_app/Features/home/presentation/views/widgets/sliding_item.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSectiion extends StatelessWidget {
  const BookDetailsSectiion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            height: 250,
            child: Center(
              child: SlidingItem(
                urlImage:
                    'https://hoppingfeet.com/wp-content/uploads/2018/11/IMG_E9565-scaled.jpg',
                hasIconButton: false,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
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
          style: Styles.textStyle16.copyWith(
            color: const Color(0xFFB2B0B7),
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const BookRatingItem(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 40,
        ),
        const FreePreviewItem(),
      ],
    );
  }
}
