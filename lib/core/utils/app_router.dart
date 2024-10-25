import 'package:booking_app/Features/home/presentation/views/home_view.dart';
import 'package:booking_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/splashView',
    routes: [
      GoRoute(
        path: '/splashView',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
