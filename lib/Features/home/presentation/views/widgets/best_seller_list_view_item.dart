import 'package:booking_app/Features/home/presentation/views/widgets/book_rating_item.dart';
import 'package:booking_app/constants.dart';
import 'package:booking_app/core/utils/app_router.dart';
import 'package:booking_app/core/utils/assets.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Row(
        children: [
          SizedBox(
            height: 135,
            child: AspectRatio(
              aspectRatio: 1.9 / 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(AssetsData.testImg),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
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
                    'Harry Potter and the Goblet of Fire',
                    style: Styles.textStyle20
                        .copyWith(fontFamily: kFontGTSectraFineRegular),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'J.K. Rowling',
                  style: Styles.textStyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const BookRatingItem(),
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
