import 'package:booking_app/Features/home/presentation/manager/sliding_books_cubit/sliding_books_cubit.dart';
import 'package:booking_app/Features/home/presentation/views/widgets/sliding_item.dart';
import 'package:booking_app/core/utils/app_router.dart';
import 'package:booking_app/core/widgets/custom_error.dart';
import 'package:booking_app/core/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ListViewItems extends StatelessWidget {
  const ListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SlidingBooksCubit, SlidingBooksState>(
      builder: (context, state) {
        if (state is SlidingBooksSuccess) {
          return SizedBox(
            height: 250,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.kBookDetailsView,
                        extra: state.books[index],
                      );
                    },
                    child: SlidingItem(
                      urlImage:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              '',
                      hasIconButton: true,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is SlidingBooksFailure) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return const Center(
            child: SizedBox(
              height: 250,
              width: 150,
              child: CustomLoadingIndecator(),
            ),
          );
        }
      },
    );
  }
}
