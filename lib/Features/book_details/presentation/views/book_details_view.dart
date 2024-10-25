import 'package:booking_app/Features/book_details/presentation/views/widgets/book_details_view_body.dart';
import 'package:booking_app/constants.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        elevation: 0,
        backgroundColor: kPrimaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: const BookDetailsViewBody(),
    );
  }
}
