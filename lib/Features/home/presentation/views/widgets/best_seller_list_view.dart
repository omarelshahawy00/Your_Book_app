import 'package:booking_app/Features/home/presentation/manager/best_seller_books_cubit/cubit/best_seller_books_cubit.dart';
import 'package:booking_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:booking_app/core/widgets/custom_error.dart';
import 'package:booking_app/core/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        if (state is BestSellerBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: BestSellerListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              },
              childCount: state.books.length,
            ),
          );
        } else if (state is BestSellerBooksFailure) {
          return SliverToBoxAdapter(
            child: CustomError(errMessage: state.errMessage),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: SizedBox(
                height: 300,
                width: 150,
                child: CustomLoadingIndecator(),
              ),
            ),
          );
        }
      },
    );
  }
}
