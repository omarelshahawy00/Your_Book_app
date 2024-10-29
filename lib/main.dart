import 'package:booking_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:booking_app/Features/home/presentation/manager/sliding_books_cubit/sliding_books_cubit.dart';
import 'package:booking_app/constants.dart';
import 'package:booking_app/core/utils/api_service.dart';
import 'package:booking_app/core/utils/app_router.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(YourBook());
}

class YourBook extends StatelessWidget {
  YourBook({super.key});
  final homeRepo = HomeRepoImpl(ApiService(Dio()));
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SlidingBooksCubit(homeRepo),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
