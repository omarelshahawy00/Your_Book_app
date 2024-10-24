import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatingItem extends StatelessWidget {
  const BookRatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFF9D84E),
          size: 15,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        Text(
          '(2390)',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
