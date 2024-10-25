import 'package:booking_app/Features/home/presentation/views/widgets/sliding_item.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksRecommendationList extends StatelessWidget {
  const BooksRecommendationList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'You can also like',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 112,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: SlidingItem(
                    hasIconButton: false,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
