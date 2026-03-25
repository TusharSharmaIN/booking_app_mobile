import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:booking_app_mobile/injection.dart';
import 'package:booking_app_mobile/infrastructure/core/auth_session/auth_session.dart';
import 'package:booking_app_mobile/presentation/auth/login_screen.dart';
import 'package:booking_app_mobile/presentation/auth/register_screen.dart';
import 'package:booking_app_mobile/presentation/services/services_list_screen.dart';
import 'package:booking_app_mobile/presentation/services/service_detail_screen.dart';
import 'package:booking_app_mobile/presentation/booking/booking_form_screen.dart';
import 'package:booking_app_mobile/presentation/booking/my_bookings_screen.dart';

class AppRoutes {
  static const String login = '/login';
  static const String register = '/register';
  static const String services = '/services';
  static const String serviceDetail = ':id';
  static const String serviceBook = 'book';
  static const String myBookings = '/bookings/my';
}

final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();

final goRouter = GoRouter(
  initialLocation: AppRoutes.services,
  observers: [routeObserver],
  redirect: (context, state) {
    try {
      final authSession = getIt<AuthSession>();
      final isLoggedIn = authSession.isLoggedIn;
      final isGoingToAuth =
          state.matchedLocation == AppRoutes.login ||
          state.matchedLocation == AppRoutes.register;

      if (!isLoggedIn && !isGoingToAuth) {
        return AppRoutes.login;
      }

      if (isLoggedIn && isGoingToAuth) {
        return AppRoutes.services;
      }
    } catch (_) {
      // safe fallback if missing
    }
    return null;
  },
  routes: [
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.register,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: AppRoutes.services,
      builder: (context, state) => const ServicesListScreen(),
      routes: [
        GoRoute(
          path: AppRoutes.serviceDetail,
          builder: (context, state) {
            final id = state.pathParameters['id']!;
            return ServiceDetailScreen(serviceId: id);
          },
          routes: [
            GoRoute(
              path: AppRoutes.serviceBook,
              builder: (context, state) {
                final id = state.pathParameters['id']!;
                return BookingFormScreen(serviceId: id);
              },
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: AppRoutes.myBookings,
      builder: (context, state) => const MyBookingsScreen(),
    ),
  ],
);
