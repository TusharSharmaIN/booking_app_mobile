import 'package:booking_app_mobile/presentation/router/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:booking_app_mobile/infrastructure/core/auth_session/auth_session.dart';
import 'package:booking_app_mobile/injection.dart';
import 'package:booking_app_mobile/presentation/theme/base_colors.dart';
import 'package:booking_app_mobile/presentation/theme/base_text_styles.dart';
import 'package:booking_app_mobile/application/services/services_bloc.dart';
import 'package:booking_app_mobile/domain/services/entities/service_entity.dart';

class ServicesListScreen extends StatefulWidget {
  const ServicesListScreen({super.key});

  @override
  State<ServicesListScreen> createState() => _ServicesListScreenState();
}

class _ServicesListScreenState extends State<ServicesListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ServicesBloc>().add(const ServicesEvent.fetchServices());
  }

  Future<void> _onLogout(BuildContext context) async {
    await getIt<AuthSession>().clearSession();
    if (context.mounted) {
      context.go(AppRoutes.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.white,
      appBar: AppBar(
        title: Text(
          'Services',
          style: BaseTextStyles.poppinsHugeBold.copyWith(letterSpacing: -0.5),
        ),
        backgroundColor: BaseColors.white,
        foregroundColor: BaseColors.black,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.list_alt, color: BaseColors.black),
            onPressed: () => context.push(AppRoutes.myBookings),
          ),
          IconButton(
            icon: const Icon(Icons.logout, color: BaseColors.black),
            onPressed: () => _onLogout(context),
          ),
        ],
      ),
      body: const _ServicesContentView(),
    );
  }
}

class _ServicesContentView extends StatelessWidget {
  const _ServicesContentView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServicesBloc, ServicesState>(
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading ||
          previous.services != current.services ||
          previous.apiFailureOrSuccess != current.apiFailureOrSuccess,
      builder: (context, state) {
        if (state.isLoading && state.services.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(color: BaseColors.black),
          );
        }

        final errorWidget = state.apiFailureOrSuccess.fold(
          () => null,
          (either) => either.fold(
            (f) => Center(
              child: Text(
                f.message,
                style: BaseTextStyles.poppinsMediumRegular.copyWith(
                  color: BaseColors.statusCancelled,
                ),
              ),
            ),
            (_) => null,
          ),
        );

        if (errorWidget != null && state.services.isEmpty) {
          return errorWidget;
        }

        if (state.services.isEmpty) {
          return Center(
            child: Text(
              'No services available.',
              style: BaseTextStyles.poppinsMediumRegular.copyWith(
                color: BaseColors.grey,
              ),
            ),
          );
        }

        return ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          itemCount: state.services.length,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) =>
              _ServiceItem(service: state.services[index]),
        );
      },
    );
  }
}

class _ServiceItem extends StatelessWidget {
  final ServiceEntity service;

  const _ServiceItem({required this.service});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () => context.push(AppRoutes.serviceDetail, extra: service.id),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: BaseColors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: BaseColors.grey200),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    service.name.getValue(),
                    style: BaseTextStyles.poppinsExtraLargeBold.copyWith(
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${service.duration.getValue()} mins',
                    style: BaseTextStyles.poppinsMediumRegular.copyWith(
                      color: BaseColors.textGrey700,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '₹${service.price.getValue().toStringAsFixed(0)}',
              style: BaseTextStyles.poppinsExtraLargeBold.copyWith(
                color: BaseColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
