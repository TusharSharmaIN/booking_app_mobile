import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:booking_app_mobile/core/errors/failures.dart';
import 'package:booking_app_mobile/domain/auth/entities/user_entity.dart';
import 'package:booking_app_mobile/domain/auth/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(AuthState.initial()) {
    on<AuthEvent>(_onEvent);
  }

  Future<void> _onEvent(AuthEvent event, Emitter<AuthState> emit) async {
    await event.map(
      loginRequested: (e) async {
        emit(state.copyWith(isLoading: true, apiFailureOrSuccess: none()));

        final result = await _authRepository.login(
          email: e.email,
          password: e.password,
        );

        result.fold(
          (failure) {
            emit(
              state.copyWith(
                isLoading: false,
                apiFailureOrSuccess: optionOf(result),
              ),
            );
          },
          (user) {
            emit(
              state.copyWith(
                isLoading: false,
                user: user,
                isAuthenticated: true,
                apiFailureOrSuccess: none(),
              ),
            );
          },
        );
      },
      registerRequested: (e) async {
        emit(state.copyWith(isLoading: true, apiFailureOrSuccess: none()));

        final result = await _authRepository.register(
          name: e.name,
          email: e.email,
          password: e.password,
        );

        result.fold(
          (failure) {
            emit(
              state.copyWith(
                isLoading: false,
                apiFailureOrSuccess: optionOf(result),
              ),
            );
          },
          (user) {
            emit(
              state.copyWith(
                isLoading: false,
                user: user,
                isAuthenticated: true,
                apiFailureOrSuccess: none(),
              ),
            );
          },
        );
      },
    );
  }
}
