import 'package:booking_app/Features/book_details/presentation/manager/book_details_section/book_details_section_cubit.dart';
import 'package:booking_app/Features/book_details/presentation/views/widgets/book_details_view_body.dart';
import 'package:booking_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booking_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<BookDetailsSectionCubit>(context)
        .fetchRecommendationBookDetails(
            category: widget.bookModel.volumeInfo.categories![0]);

    super.initState();
  }

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
      body: SafeArea(
        child: BookDetailsViewBody(bookModel: widget.bookModel),
      ),
    );
  }
}
