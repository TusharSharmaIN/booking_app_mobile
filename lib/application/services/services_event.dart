part of 'services_bloc.dart';

@freezed
class ServicesEvent with _$ServicesEvent {
  const factory ServicesEvent.fetchServices() = _FetchServices;
  const factory ServicesEvent.fetchServiceDetail(String id) =
      _FetchServiceDetail;
}
