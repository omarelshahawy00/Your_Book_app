import 'package:booking_app/Features/home/presentation/views/widgets/sliding_item.dart';
import 'package:flutter/material.dart';

class ListViewItems extends StatelessWidget {
  const ListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: SlidingItem(
              hasIconButton: true,
            ),
          );
        },
      ),
    );
  }
}
