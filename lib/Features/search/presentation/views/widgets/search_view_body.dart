import 'package:booking_app/Features/search/presentation/views/widgets/search_field.dart';
import 'package:booking_app/Features/search/presentation/views/widgets/search_result_list.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

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
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: SearchField(),
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
          const SearchResultList(),
        ],
      ),
    );
  }
}
