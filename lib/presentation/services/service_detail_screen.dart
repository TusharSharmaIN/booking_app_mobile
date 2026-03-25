import 'package:booking_app_mobile/presentation/router/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:booking_app_mobile/presentation/theme/base_colors.dart';
import 'package:booking_app_mobile/presentation/theme/base_text_styles.dart';
import 'package:booking_app_mobile/application/services/services_bloc.dart';
import 'package:booking_app_mobile/domain/services/entities/service_entity.dart';

class ServiceDetailScreen extends StatefulWidget {
  final String serviceId;

  const ServiceDetailScreen({super.key, required this.serviceId});

  @override
  State<ServiceDetailScreen> createState() => _ServiceDetailScreenState();
}

class _ServiceDetailScreenState extends State<ServiceDetailScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ServicesBloc>().add(
      ServicesEvent.fetchServiceDetail(widget.serviceId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.white,
      appBar: AppBar(
        backgroundColor: BaseColors.white,
        foregroundColor: BaseColors.black,
        elevation: 0,
      ),
      body: const _ServiceDetailView(),
    );
  }
}

class _ServiceDetailView extends StatelessWidget {
  const _ServiceDetailView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServicesBloc, ServicesState>(
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading ||
          previous.serviceDetail != current.serviceDetail ||
          previous.apiFailureOrSuccess != current.apiFailureOrSuccess,
      builder: (context, state) {
        if (state.isLoading && state.serviceDetail.id.getValue().isEmpty) {
          return const Center(
            child: CircularProgressIndicator(color: BaseColors.black),
          );
        }

        final service = state.serviceDetail;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: _ServiceInfo(service: service)),
            _BookingCTA(service: service),
          ],
        );
      },
    );
  }
}

class _ServiceInfo extends StatelessWidget {
  final ServiceEntity service;

  const _ServiceInfo({required this.service});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            service.name.getValue(),
            style: BaseTextStyles.poppinsDisplayBold.copyWith(
              letterSpacing: -1,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Description',
            style: BaseTextStyles.poppinsMediumBold.copyWith(
              color: BaseColors.textGrey700,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            service.description.getValue(),
            style: BaseTextStyles.poppinsLargeRegular.copyWith(
              height: 1.6,
              color: BaseColors.black,
            ),
          ),
          const SizedBox(height: 32),
          _PriceDurationCard(service: service),
        ],
      ),
    );
  }
}

class _PriceDurationCard extends StatelessWidget {
  final ServiceEntity service;

  const _PriceDurationCard({required this.service});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: BaseColors.grey50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: BaseColors.grey200),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _InfoColumn(
            label: 'Duration',
            value: '${service.duration.getValue()} mins',
          ),
          _InfoColumn(
            label: 'Price',
            value: '₹${service.price.getValue().toStringAsFixed(0)}',
            crossAxisAlignment: CrossAxisAlignment.end,
          ),
        ],
      ),
    );
  }
}

class _InfoColumn extends StatelessWidget {
  final String label;
  final String value;
  final CrossAxisAlignment crossAxisAlignment;

  const _InfoColumn({
    required this.label,
    required this.value,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          label,
          style: BaseTextStyles.poppinsSemiMediumRegular.copyWith(
            color: BaseColors.textGrey700,
          ),
        ),
        const SizedBox(height: 4),
        Text(value, style: BaseTextStyles.poppinsLargeBold),
      ],
    );
  }
}

class _BookingCTA extends StatelessWidget {
  final ServiceEntity service;

  const _BookingCTA({required this.service});

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    final isActive = service.isActive.getValue();

    return Container(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 24,
        bottom: bottomPadding + 24,
      ),
      decoration: const BoxDecoration(
        color: BaseColors.white,
        border: Border(top: BorderSide(color: BaseColors.grey200)),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 0,
          backgroundColor: BaseColors.black,
          foregroundColor: BaseColors.white,
          disabledBackgroundColor: BaseColors.grey300,
        ),
        onPressed: isActive
            ? () => context.push(
                '${AppRoutes.services}/${service.id.getValue()}/${AppRoutes.serviceBook}',
              )
            : null,
        child: Text(
          isActive ? 'Book Now' : 'Currently Unavailable',
          style: BaseTextStyles.poppinsLargeBold,
        ),
      ),
    );
  }
}
