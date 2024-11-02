import 'package:booking_app/Features/book_details/presentation/manager/book_details_section/book_details_section_cubit.dart';
import 'package:booking_app/Features/book_details/presentation/views/book_details_view.dart';
import 'package:booking_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booking_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:booking_app/Features/home/presentation/views/home_view.dart';
import 'package:booking_app/Features/search/presentation/views/search_view.dart';
import 'package:booking_app/Features/splash/presentation/views/splash_view.dart';
import 'package:booking_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const kSplashView = '/splashView';
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    initialLocation: '/splashView',
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              BookDetailsSectionCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
