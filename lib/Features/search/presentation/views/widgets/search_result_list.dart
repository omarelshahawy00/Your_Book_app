import 'package:booking_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 20,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 7, bottom: 7, left: 30),
            child: BestSellerListViewItem(),
          );
        },
      ),
    );
  }
}
