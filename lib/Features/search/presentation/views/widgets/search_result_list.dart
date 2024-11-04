import 'package:booking_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booking_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultList extends StatelessWidget {
  final List<BookModel> filteredBooks; // Accept filtered books

  const SearchResultList({super.key, required this.filteredBooks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: filteredBooks.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 7, bottom: 7, left: 30),
          child: BestSellerListViewItem(
            bookModel: filteredBooks[index],
          ),
        );
      },
    );
  }
}
