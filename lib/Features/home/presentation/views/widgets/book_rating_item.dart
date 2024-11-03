import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatingItem extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final int avgRating;
  final int ratingCount;

  const BookRatingItem({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.avgRating,
    required this.ratingCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFF9D84E),
          size: 15,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          avgRating.toString(),
          style: Styles.textStyle16,
        ),
        Text(
          '(${ratingCount.toString()})',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
