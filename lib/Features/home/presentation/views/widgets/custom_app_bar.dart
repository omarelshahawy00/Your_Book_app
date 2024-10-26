import 'package:booking_app/core/utils/app_router.dart';
import 'package:booking_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Row(
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
              size: 20,
            ),
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
          ),
        ],
      ),
    );
  }
}
