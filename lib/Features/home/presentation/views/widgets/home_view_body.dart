import 'package:booking_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:booking_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'list_view_items.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(
            height: 30,
          ),
          ListViewItems(),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 7),
            child: Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
