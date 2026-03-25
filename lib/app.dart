import 'package:booking_app_mobile/application/auth/auth_bloc.dart';
import 'package:booking_app_mobile/application/booking/booking_bloc.dart';
import 'package:booking_app_mobile/application/services/services_bloc.dart';
import 'package:booking_app_mobile/injection.dart';
import 'package:booking_app_mobile/presentation/theme/base_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:booking_app_mobile/presentation/router/route.dart';

class ServiceBookingApp extends StatelessWidget {
  const ServiceBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
        BlocProvider<BookingBloc>(create: (_) => getIt<BookingBloc>()),
        BlocProvider<ServicesBloc>(create: (_) => getIt<ServicesBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Service Booking App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: BaseColors.deepPurple),
          useMaterial3: true,
          textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
        ),
        routerConfig: goRouter,
      ),
    );
  }
}
