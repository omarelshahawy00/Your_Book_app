import '../Features/splash/presentation/view_model/views/splash_view.dart';
import 'package:booking_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const YourBook());
}

class YourBook extends StatelessWidget {
  const YourBook({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: const SplashView(),
    );
  }
}
