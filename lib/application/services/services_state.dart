part of 'services_bloc.dart';

@freezed
abstract class ServicesState with _$ServicesState {
  const ServicesState._();

  const factory ServicesState({
    required bool isLoading,
    required List<ServiceEntity> services,
    required ServiceEntity serviceDetail,
    required Option<Either<Failure, dynamic>> apiFailureOrSuccess,
  }) = _ServicesState;

  factory ServicesState.initial() => ServicesState(
    isLoading: false,
    services: const <ServiceEntity>[],
    serviceDetail: ServiceEntity.empty(),
    apiFailureOrSuccess: none(),
  );
}
