import 'package:booking_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FreePreviewItem extends StatelessWidget {
  const FreePreviewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 48,
          width: 150,
          decoration: const BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15))),
          child: Center(
            child: Text(
              '0€',
              style: Styles.textStyle18
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        GestureDetector(
          onTap: () async {
            Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
            if (!await launchUrl(uri)) {
              throw Exception('Could not launch $uri');
            } else {
              launchUrl(uri);
            }
          },
          child: Container(
            height: 48,
            width: 150,
            decoration: const BoxDecoration(
              color: Color(0xffEF8262),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Center(
              child: getText(bookModel),
            ),
          ),
        ),
      ],
    );
  }

  Text getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return Text(
        'Not Available',
        style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
      );
    } else {
      return Text(
        'Free Preview',
        style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
      );
    }
  }
}
