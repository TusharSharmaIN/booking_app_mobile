import 'package:booking_app_mobile/domain/core/error/api_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:booking_app_mobile/domain/services/entities/service_entity.dart';
import 'package:booking_app_mobile/domain/services/repositories/service_repository.dart';

part 'services_event.dart';
part 'services_state.dart';
part 'services_bloc.freezed.dart';

@injectable
class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  final ServiceRepository _serviceRepository;

  ServicesBloc(this._serviceRepository) : super(ServicesState.initial()) {
    on<ServicesEvent>(_onEvent);
  }

  Future<void> _onEvent(
    ServicesEvent event,
    Emitter<ServicesState> emit,
  ) async {
    await event.map(
      fetchServices: (_) async {
        emit(state.copyWith(isLoading: true, apiFailureOrSuccess: none()));

        final result = await _serviceRepository.getServices();

        result.fold(
          (failure) {
            emit(
              state.copyWith(
                isLoading: false,
                apiFailureOrSuccess: optionOf(result),
              ),
            );
          },
          (services) {
            emit(
              state.copyWith(
                isLoading: false,
                services: services,
                apiFailureOrSuccess: some(result),
              ),
            );
          },
        );
      },
      fetchServiceDetail: (e) async {
        emit(state.copyWith(isLoading: true, apiFailureOrSuccess: none()));

        final result = await _serviceRepository.getServiceDetail(e.id);

        result.fold(
          (failure) {
            emit(
              state.copyWith(
                isLoading: false,
                apiFailureOrSuccess: optionOf(result),
              ),
            );
          },
          (serviceDetail) {
            emit(
              state.copyWith(
                isLoading: false,
                serviceDetail: serviceDetail,
                apiFailureOrSuccess: some(result),
              ),
            );
          },
        );
      },
    );
  }
}
