import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booking_app_mobile/presentation/theme/base_colors.dart';
import 'package:booking_app_mobile/presentation/theme/base_text_styles.dart';
import 'package:booking_app_mobile/application/booking/booking_bloc.dart';
import 'package:booking_app_mobile/domain/booking/entities/booking_entity.dart';

class MyBookingsScreen extends StatefulWidget {
  const MyBookingsScreen({super.key});

  @override
  State<MyBookingsScreen> createState() => _MyBookingsScreenState();
}

class _MyBookingsScreenState extends State<MyBookingsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<BookingBloc>().add(const BookingEvent.fetchMyBookings());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.white,
      appBar: AppBar(
        title: Text(
          'My Bookings',
          style: BaseTextStyles.poppinsHugeBold.copyWith(letterSpacing: -0.5),
        ),
        backgroundColor: BaseColors.white,
        foregroundColor: BaseColors.black,
        elevation: 0,
      ),
      body: const _MyBookingsContentView(),
    );
  }
}

class _MyBookingsContentView extends StatelessWidget {
  const _MyBookingsContentView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading ||
          previous.bookings != current.bookings ||
          previous.apiFailureOrSuccess != current.apiFailureOrSuccess,
      builder: (context, state) {
        if (state.isLoading && state.bookings.isEmpty) {
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

        if (errorWidget != null && state.bookings.isEmpty) {
          return errorWidget;
        }

        if (state.bookings.isEmpty) {
          return Center(
            child: Text(
              'You have no bookings.',
              style: BaseTextStyles.poppinsMediumRegular.copyWith(
                color: BaseColors.grey,
              ),
            ),
          );
        }

        return ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          itemCount: state.bookings.length,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) =>
              _BookingCard(booking: state.bookings[index]),
        );
      },
    );
  }
}

class _BookingCard extends StatelessWidget {
  final BookingEntity booking;

  const _BookingCard({required this.booking});

  @override
  Widget build(BuildContext context) {
    final formattedDate = booking.scheduledAt.getFormattedDate();
    final status = booking.status.getValue();

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: BaseColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: BaseColors.grey200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  booking.service.name.getValue(),
                  style: BaseTextStyles.poppinsExtraLargeBold.copyWith(
                    letterSpacing: -0.5,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: booking.getStatusBgColor(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  status.toUpperCase(),
                  style: BaseTextStyles.poppinsSmallBold.copyWith(
                    color: booking.getStatusColor(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(
                Icons.calendar_today,
                size: 16,
                color: BaseColors.textGrey700,
              ),
              const SizedBox(width: 8),
              Text(
                formattedDate,
                style: BaseTextStyles.poppinsMediumRegular.copyWith(
                  color: BaseColors.textGrey700,
                ),
              ),
            ],
          ),
          if (booking.notes.getValue().isNotEmpty) ...[
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                color: BaseColors.grey50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Note: ${booking.notes.getValue()}',
                style: BaseTextStyles.poppinsSemiMediumBold.copyWith(
                  fontStyle: FontStyle.italic,
                  color: BaseColors.black,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
