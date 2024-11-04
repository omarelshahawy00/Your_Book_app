import 'package:booking_app/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:booking_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'list_view_items.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              SizedBox(
                height: 30,
              ),
              ListViewItems(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Populer Books',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),

        //  SliverFillRemaining(
        //         child: Padding(
        //           padding: EdgeInsets.symmetric(horizontal: 30),
        //           child: BestSellerListView(),
        //         ),
        //       )

        // SliverList(
        //   delegate: SliverChildBuilderDelegate(
        //     (context, index) {
        //       return Padding(
        //         padding: const EdgeInsets.symmetric(horizontal: 30),
        //         child: BestSellerListView(),
        //       );
        //     },
        //   ),
        // ),
        BestSellerListView(),
      ],
    );
  }
}
