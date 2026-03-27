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
  // Paths
  static const String loginPath = '/login';
  static const String registerPath = '/register';
  static const String servicesPath = '/services';
  static const String serviceDetailPath = ':serviceId';
  static const String serviceBookPath = 'book';
  static const String myBookingsPath = '/bookings/my';

  // Names
  static const String login = 'login';
  static const String register = 'register';
  static const String services = 'services';
  static const String serviceDetail = 'serviceDetail';
  static const String serviceBook = 'serviceBook';
  static const String myBookings = 'myBookings';

  // Parameters
  static const String serviceId = 'serviceId';
}

final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();

final goRouter = GoRouter(
  initialLocation: AppRoutes.servicesPath,
  observers: [routeObserver],
  redirect: (context, state) {
    try {
      final authSession = getIt<AuthSession>();
      final isLoggedIn = authSession.isLoggedIn;
      final isGoingToAuth =
          state.matchedLocation == AppRoutes.loginPath ||
          state.matchedLocation == AppRoutes.registerPath;

      if (!isLoggedIn && !isGoingToAuth) {
        return AppRoutes.loginPath;
      }

      if (isLoggedIn && isGoingToAuth) {
        return AppRoutes.servicesPath;
      }
    } catch (_) {
      // safe fallback if missing
    }
    return null;
  },
  routes: [
    GoRoute(
      path: AppRoutes.loginPath,
      name: AppRoutes.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.registerPath,
      name: AppRoutes.register,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: AppRoutes.servicesPath,
      name: AppRoutes.services,
      builder: (context, state) => const ServicesListScreen(),
      routes: [
        GoRoute(
          name: AppRoutes.serviceDetail,
          path: AppRoutes.serviceDetailPath,
          builder: (context, state) {
            final id = state.extra as String;
            return ServiceDetailScreen(serviceId: id);
          },
          routes: [
            GoRoute(
              name: AppRoutes.serviceBook,
              path: AppRoutes.serviceBookPath,
              builder: (context, state) {
                final id = state.pathParameters[AppRoutes.serviceId]!;
                return BookingFormScreen(serviceId: id);
              },
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: AppRoutes.myBookingsPath,
      name: AppRoutes.myBookings,
      builder: (context, state) => const MyBookingsScreen(),
    ),
  ],
);
