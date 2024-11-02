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
          return null;

          // return const Padding(
          //   padding: EdgeInsets.only(top: 7, bottom: 7, left: 30),
          //   child: BestSellerListViewItem(),
          // );
        },
      ),
    );
  }
}
