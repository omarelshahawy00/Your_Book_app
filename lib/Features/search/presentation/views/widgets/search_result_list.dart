import 'package:booking_app/Features/home/presentation/manager/best_seller_books_cubit/cubit/best_seller_books_cubit.dart';
import 'package:booking_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:booking_app/core/widgets/custom_error.dart';
import 'package:booking_app/core/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
        builder: (context, state) {
          if (state is BestSellerBooksSuccess) {
            return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 7, bottom: 7, left: 30),
                  child: BestSellerListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              },
            );
          } else if (state is BestSellerBooksFailure) {
            return CustomError(errMessage: state.errMessage);
          } else {
            return CustomLoadingIndecator();
          }
        },
      ),
    );
  }
}
