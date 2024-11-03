import 'package:booking_app/Features/book_details/presentation/manager/book_details_section/book_details_section_cubit.dart';
import 'package:booking_app/Features/home/presentation/views/widgets/sliding_item.dart';
import 'package:booking_app/core/utils/app_router.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/core/widgets/custom_error.dart';
import 'package:booking_app/core/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
            child:
                BlocBuilder<BookDetailsSectionCubit, BookDetailsSectionState>(
              builder: (context, state) {
                if (state is BookDetailsSectionSuccess) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: state.books.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: GestureDetector(
                          onTap: () {
                            GoRouter.of(context).push(
                              AppRouter.kBookDetailsView,
                              extra: state.books[index],
                            );
                          },
                          child: SlidingItem(
                            urlImage: state.books[index].volumeInfo.imageLinks
                                    ?.thumbnail ??
                                '',
                            hasIconButton: false,
                          ),
                        ),
                      );
                    },
                  );
                } else if (state is BookDetailsSectionFailure) {
                  return CustomError(errMessage: state.errMessage);
                } else {
                  return const CustomLoadingIndecator();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
