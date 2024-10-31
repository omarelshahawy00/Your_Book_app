import 'package:flutter/material.dart';

class SlidingItem extends StatelessWidget {
  const SlidingItem(
      {super.key, this.hasIconButton = false, required this.urlImage});

  final bool hasIconButton;
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: NetworkImage(urlImage),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 70, top: 150),
            child: hasIconButton
                ? IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_arrow,
                      size: 30,
                    ),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
