import 'package:booking_app_mobile/presentation/router/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:booking_app_mobile/presentation/theme/base_colors.dart';
import 'package:booking_app_mobile/presentation/theme/base_text_styles.dart';
import 'package:booking_app_mobile/application/booking/booking_bloc.dart';
import 'package:booking_app_mobile/presentation/core/custom/custom_text_field.dart';
import 'package:booking_app_mobile/presentation/core/utils/response_utils.dart';

class BookingFormScreen extends StatelessWidget {
  final String serviceId;

  const BookingFormScreen({super.key, required this.serviceId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.white,
      appBar: AppBar(
        title: Text(
          'Book Service',
          style: BaseTextStyles.poppinsHugeBold.copyWith(letterSpacing: -0.5),
        ),
        backgroundColor: BaseColors.white,
        foregroundColor: BaseColors.black,
        elevation: 0,
      ),
      body: BlocListener<BookingBloc, BookingState>(
        listenWhen: (p, c) =>
            (p.apiFailureOrSuccess != c.apiFailureOrSuccess &&
                c.apiFailureOrSuccess.isSome()) ||
            (!p.createSuccess && c.createSuccess),
        listener: (context, state) {
          if (state.createSuccess) {
            ShowSuccessDialog.show(context);
            return;
          }
          state.apiFailureOrSuccess.fold(
            () {},
            (either) => either.fold(
              (failure) => ResponseUtils.handleApiFailure(context, failure),
              (_) {},
            ),
          );
        },
        child: _BookingFormView(serviceId: serviceId),
      ),
    );
  }
}

class ShowSuccessDialog {
  static void hide(BuildContext context) {
    context.pop();
  }

  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text('Success', style: BaseTextStyles.poppinsExtraLargeBold),
        content: const Text(
          'Your booking has been successfully confirmed. We look forward to seeing you!',
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
              context.go(AppRoutes.services);
            },
            child: Text(
              'OK',
              style: BaseTextStyles.poppinsLargeBold.copyWith(
                color: BaseColors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BookingFormView extends StatelessWidget {
  final String serviceId;

  const _BookingFormView({required this.serviceId});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _BookingHeader(),
                SizedBox(height: 32),
                _DateTimeSection(),
                SizedBox(height: 32),
                _NotesSection(),
              ],
            ),
          ),
        ),
        _ConfirmBookingCTA(serviceId: serviceId),
      ],
    );
  }
}

class _BookingHeader extends StatelessWidget {
  const _BookingHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Schedule Appointment',
          style: BaseTextStyles.poppinsHugeBold.copyWith(
            fontSize: 24,
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Pick a suitable date and time for your service.',
          style: BaseTextStyles.poppinsMediumRegular.copyWith(
            color: BaseColors.textGrey700,
          ),
        ),
      ],
    );
  }
}

class _DateTimeSection extends StatelessWidget {
  const _DateTimeSection();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: _DatePickerWidget()),
        SizedBox(width: 16),
        Expanded(child: _TimePickerWidget()),
      ],
    );
  }
}

class _DatePickerWidget extends StatelessWidget {
  const _DatePickerWidget();

  Future<void> _show(BuildContext context) async {
    final bloc = context.read<BookingBloc>();
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) currentFocus.unfocus();

    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now().add(const Duration(days: 1)),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
            primary: BaseColors.black,
            onPrimary: BaseColors.white,
            onSurface: BaseColors.black,
          ),
        ),
        child: child!,
      ),
    );

    if (date != null) {
      final currentState = bloc.state.date;
      final isInitial = !currentState.isNotEmpty;
      final currentDt = currentState.dateTime;
      final newDateTime = DateTime(
        date.year,
        date.month,
        date.day,
        isInitial ? 10 : currentDt.hour,
        isInitial ? 0 : currentDt.minute,
      );
      bloc.add(
        BookingEvent.onBookingInputFieldChanged(
          fieldType: BookingFieldType.timestamp,
          value: newDateTime.toIso8601String(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      buildWhen: (p, c) => p.date != c.date,
      builder: (context, state) {
        final dateStr = !state.date.isNotEmpty
            ? 'Select Date'
            : '${state.date.dateTime.day}/${state.date.dateTime.month}/${state.date.dateTime.year}';

        return _SelectionButton(
          icon: Icons.calendar_today,
          label: dateStr,
          onPressed: () => _show(context),
        );
      },
    );
  }
}

class _TimePickerWidget extends StatelessWidget {
  const _TimePickerWidget();

  Future<void> _show(BuildContext context) async {
    final bloc = context.read<BookingBloc>();
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) currentFocus.unfocus();

    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
            primary: BaseColors.black,
            onPrimary: BaseColors.white,
            onSurface: BaseColors.black,
          ),
        ),
        child: child!,
      ),
    );

    if (time != null) {
      final currentState = bloc.state.date;
      final isInitial = !currentState.isNotEmpty;
      final currentDt = currentState.dateTime;
      final now = DateTime.now();
      final newDateTime = DateTime(
        isInitial ? now.year : currentDt.year,
        isInitial ? now.month : currentDt.month,
        isInitial ? now.day : currentDt.day,
        time.hour,
        time.minute,
      );
      bloc.add(
        BookingEvent.onBookingInputFieldChanged(
          fieldType: BookingFieldType.timestamp,
          value: newDateTime.toIso8601String(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      buildWhen: (p, c) => p.date != c.date,
      builder: (context, state) {
        final timeStr = !state.date.isNotEmpty
            ? 'Select Time'
            : TimeOfDay.fromDateTime(state.date.dateTime).format(context);

        return _SelectionButton(
          icon: Icons.access_time,
          label: timeStr,
          onPressed: () => _show(context),
        );
      },
    );
  }
}

class _SelectionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const _SelectionButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        side: const BorderSide(color: BaseColors.black, width: 1.5),
        foregroundColor: BaseColors.black,
      ),
      icon: Icon(icon, size: 20),
      label: Text(label, style: BaseTextStyles.poppinsMediumBold),
      onPressed: onPressed,
    );
  }
}

class _NotesSection extends StatelessWidget {
  const _NotesSection();

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      label: 'Optional Notes',
      hint: 'Add any specific requirements...',
      maxLines: 4,
      alignLabelWithHint: true,
      onChanged: (value) {
        context.read<BookingBloc>().add(
              BookingEvent.onBookingInputFieldChanged(
                fieldType: BookingFieldType.notes,
                value: value,
              ),
            );
      },
    );
  }
}

class _ConfirmBookingCTA extends StatelessWidget {
  final String serviceId;

  const _ConfirmBookingCTA({required this.serviceId});

  void _onConfirmPressed(BuildContext context) {
    final state = context.read<BookingBloc>().state;
    final scheduledAt = state.date;

    if (!scheduledAt.isNotEmpty) {
      ResponseUtils.handleApiSuccess(
        context,
        message: 'Please select both date and time',
      );
      return;
    }

    context.read<BookingBloc>().add(
      BookingEvent.createBooking(
        serviceId: serviceId,
        scheduledAt: scheduledAt.dateTime.toUtc(),
        notes: state.notes.getValue().trim(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).padding.bottom;

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
      child: BlocBuilder<BookingBloc, BookingState>(
        buildWhen: (previous, current) =>
            previous.isLoading != current.isLoading,
        builder: (context, state) {
          final isLoading = state.isLoading;
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 0,
              backgroundColor: BaseColors.black,
              foregroundColor: BaseColors.white,
            ),
            onPressed: isLoading ? null : () => _onConfirmPressed(context),
            child: isLoading
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: BaseColors.white,
                    ),
                  )
                : Text(
                    'Confirm Booking',
                    style: BaseTextStyles.poppinsLargeBold.copyWith(
                      color: BaseColors.white,
                    ),
                  ),
          );
        },
      ),
    );
  }
}
