import 'package:booking_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25, right: 25, top: 50),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
