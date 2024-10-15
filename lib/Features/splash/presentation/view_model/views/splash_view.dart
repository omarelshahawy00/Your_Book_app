import 'package:booking_app/Features/splash/presentation/view_model/views/widgets/splash_body_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: const SplashBodyView(),
    );
  }
}
