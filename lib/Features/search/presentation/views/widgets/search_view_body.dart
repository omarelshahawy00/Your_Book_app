import 'package:booking_app/Features/home/presentation/manager/best_seller_books_cubit/cubit/best_seller_books_cubit.dart';
import 'package:booking_app/Features/search/presentation/views/widgets/search_field.dart';
import 'package:booking_app/Features/search/presentation/views/widgets/search_result_list.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/core/widgets/custom_error.dart';
import 'package:booking_app/core/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  String searchQuery = ''; // State to hold search query
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SearchField(
              onSearchChanged: (query) {
                setState(() {
                  searchQuery = query; // Update search query
                });
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Search Result',
              style: Styles.textStyle18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
              builder: (context, state) {
                if (state is BestSellerBooksSuccess) {
                  // Filter the books based on search query
                  final filteredBooks = state.books.where((book) {
                    return book.volumeInfo.title!
                        .toLowerCase()
                        .contains(searchQuery.toLowerCase());
                  }).toList();

                  return SearchResultList(
                      filteredBooks: filteredBooks); // Pass the filtered list
                } else if (state is BestSellerBooksFailure) {
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
