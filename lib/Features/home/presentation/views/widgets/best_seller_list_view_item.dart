import 'package:booking_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booking_app/Features/home/presentation/views/widgets/book_rating_item.dart';
import 'package:booking_app/Features/home/presentation/views/widgets/sliding_item.dart';
import 'package:booking_app/constants.dart';
import 'package:booking_app/core/utils/app_router.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kBookDetailsView,
          extra: bookModel,
        );
      },
      child: Row(
        children: [
          SizedBox(
            height: 135,
            child: SlidingItem(
                urlImage: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    bookModel.volumeInfo.title ?? '',
                    style: Styles.textStyle20
                        .copyWith(fontFamily: kFontGTSectraFineRegular),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  bookModel.volumeInfo.authors?[0] ?? '',
                  style: Styles.textStyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    BookRatingItem(
                      avgRating:
                          bookModel.volumeInfo.averageRating?.round() ?? 0,
                      ratingCount:
                          bookModel.volumeInfo.ratingsCount?.round() ?? 0,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
