import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatingItem extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const BookRatingItem(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
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
