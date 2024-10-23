import 'package:booking_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetsData.logo,
          width: 100,
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 22,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
