import 'package:booking_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booking_app/core/utils/assets.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
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

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 130,
          child: AspectRatio(
            aspectRatio: 1.9 / 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage(AssetsData.testImg),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        const Text('this is book name'),
      ],
    );
  }
}
