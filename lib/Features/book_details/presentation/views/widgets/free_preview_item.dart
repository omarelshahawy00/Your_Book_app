import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class FreePreviewItem extends StatelessWidget {
  const FreePreviewItem({super.key});

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
              '19.99€',
              style: Styles.textStyle18
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
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
            child: Text(
              'Free Preview',
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
