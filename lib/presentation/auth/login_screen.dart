import 'package:booking_app_mobile/domain/core/error/api_failures.dart';
import 'package:booking_app_mobile/presentation/router/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:booking_app_mobile/presentation/theme/base_colors.dart';
import 'package:booking_app_mobile/presentation/theme/base_text_styles.dart';
import 'package:booking_app_mobile/application/auth/auth_bloc.dart';
import 'package:booking_app_mobile/presentation/core/custom/custom_text_field.dart';
import 'package:booking_app_mobile/presentation/core/utils/response_utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.white,
      body: BlocListener<AuthBloc, AuthState>(
        listenWhen: (p, c) =>
            p.apiFailureOrSuccess != c.apiFailureOrSuccess ||
            p.isAuthenticated != c.isAuthenticated,
        listener: (context, state) {
          if (state.isAuthenticated) {
            context.go(AppRoutes.servicesPath);
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
        child: const SafeArea(child: _LoginFormView()),
      ),
    );
  }
}

class _LoginFormView extends StatelessWidget {
  const _LoginFormView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome Back',
              style: BaseTextStyles.poppinsDisplayBold.copyWith(
                letterSpacing: -1,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'Sign in to your account',
              style: BaseTextStyles.poppinsLargeRegularBold.copyWith(
                color: BaseColors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            CustomTextField(
              label: 'Email',
              hint: 'Enter your email',
              prefixIcon: Icons.email_outlined,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                context.read<AuthBloc>().add(
                  AuthEvent.onAuthInputFieldChanged(
                    fieldType: AuthFieldType.email,
                    value: value,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomTextField(
              label: 'Password',
              hint: 'Enter your password',
              prefixIcon: Icons.lock_outline,
              obscureText: true,
              onChanged: (value) {
                context.read<AuthBloc>().add(
                  AuthEvent.onAuthInputFieldChanged(
                    fieldType: AuthFieldType.password,
                    value: value,
                  ),
                );
              },
            ),
            const SizedBox(height: 32),
            const LoginCTA(),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () => context.pushNamed(AppRoutes.register),
              style: TextButton.styleFrom(
                foregroundColor: BaseColors.textGrey700,
              ),
              child: const Text('Don\'t have an account? Register'),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginCTA extends StatelessWidget {
  const LoginCTA({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading ||
          previous.email != current.email ||
          previous.password != current.password,
      builder: (context, state) {
        final isLoading = state.isLoading;
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
            backgroundColor: BaseColors.black,
            foregroundColor: BaseColors.white,
          ),
          onPressed: isLoading
              ? null
              : () {
                  if (!state.email.isValid() || !state.password.isValid()) {
                    ResponseUtils.handleApiFailure(
                      context,
                      const ApiFailure.other(
                        'Please fill all fields correctly',
                      ),
                    );
                    return;
                  }
                  context.read<AuthBloc>().add(
                    AuthEvent.loginRequested(
                      email: state.email.getValue(),
                      password: state.password.getValue(),
                    ),
                  );
                },
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
                  'Login',
                  style: BaseTextStyles.poppinsLargeBold.copyWith(
                    color: BaseColors.white,
                  ),
                ),
        );
      },
    );
  }
}
