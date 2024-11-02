import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SlidingItem extends StatelessWidget {
  const SlidingItem(
      {super.key, this.hasIconButton = false, required this.urlImage});

  final bool hasIconButton;
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        child: AspectRatio(
          aspectRatio: 2 / 3,
          child: CachedNetworkImage(
            placeholder: (context, url) => Center(
              child: Image.asset(
                'assets/images/loading2.gif',
              ),
            ),
            imageUrl: urlImage,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
