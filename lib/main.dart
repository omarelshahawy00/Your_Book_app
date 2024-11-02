import 'package:booking_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:booking_app/Features/home/presentation/manager/best_seller_books_cubit/cubit/best_seller_books_cubit.dart';
import 'package:booking_app/Features/home/presentation/manager/sliding_books_cubit/sliding_books_cubit.dart';
import 'package:booking_app/constants.dart';
import 'package:booking_app/core/utils/app_router.dart';
import 'package:booking_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const YourBook());
}

class YourBook extends StatelessWidget {
  const YourBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              SlidingBooksCubit(getIt.get<HomeRepoImpl>())..fetchSlidingBooks(),
        ),
        BlocProvider(
          create: (context) => BestSellerBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchBestSellerBook(),
        ),
        // BlocProvider(
        //   create: (context) => BookDetailsSectionCubit(
        //     getIt.get<HomeRepoImpl>(),
        //   )..fetchBookDetails(),
        // ),
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
