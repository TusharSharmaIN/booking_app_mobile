import 'package:booking_app_mobile/domain/core/error/api_failures.dart';
import 'package:booking_app_mobile/injection.dart';
import 'package:booking_app_mobile/infrastructure/core/auth_session/auth_session.dart';
import 'package:booking_app_mobile/presentation/router/route.dart';
import 'package:booking_app_mobile/presentation/theme/base_colors.dart';
import 'package:booking_app_mobile/presentation/theme/base_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum SnackBarType { error, success }

class ResponseUtils {
  static void handleApiFailure(
    BuildContext context,
    ApiFailure failure, {
    VoidCallback? onDismiss,
  }) {
    // Check for connection or timeout
    final isConnectionError = failure.maybeMap(
      poorConnection: (_) => true,
      serverTimeout: (_) => true,
      networkError: (_) => true,
      orElse: () => false,
    );

    if (isConnectionError) {
      _showNoInternetDialog(context);
      return;
    }

    // Check for session expiry
    final isTokenExpired = failure.maybeMap(
      tokenExpired: (_) => true,
      other: (f) =>
          f.message.toLowerCase().contains('session expired') ||
          f.message.toLowerCase().contains('invalid or expired token'),
      serverError: (f) => f.message.toLowerCase().contains('session expired'),
      orElse: () => false,
    );

    if (isTokenExpired) {
      _showTopSnackbar(
        context,
        message: 'Your session has expired. Please login again.',
        type: SnackBarType.error,
      );
      getIt<AuthSession>().clearSession();
      context.go(AppRoutes.login);
      return;
    }

    _showTopSnackbar(
      context,
      message: failure.message,
      type: SnackBarType.error,
      onDismiss: onDismiss,
    );
  }

  static void handleApiSuccess(
    BuildContext context, {
    required String message,
    VoidCallback? onDismiss,
  }) {
    _showTopSnackbar(
      context,
      message: message,
      type: SnackBarType.success,
      onDismiss: onDismiss,
    );
  }

  static void _showNoInternetDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text('No Connection', style: BaseTextStyles.poppinsLargeBold),
        content: Text(
          'Please check your internet connection and try again.',
          style: BaseTextStyles.poppinsMediumRegular,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'OK',
              style: BaseTextStyles.poppinsMediumBold.copyWith(
                color: BaseColors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void _showTopSnackbar(
    BuildContext context, {
    required String message,
    required SnackBarType type,
    VoidCallback? onDismiss,
  }) {
    final overlay = Overlay.of(context);
    late OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(
      builder: (context) => _TopSnackBar(
        message: message,
        type: type,
        onDismiss: () {
          if (overlayEntry.mounted) {
            overlayEntry.remove();
            onDismiss?.call();
          }
        },
      ),
    );

    overlay.insert(overlayEntry);

    Future.delayed(const Duration(seconds: 3), () {
      if (overlayEntry.mounted) {
        overlayEntry.remove();
        onDismiss?.call();
      }
    });
  }
}

class _TopSnackBar extends StatelessWidget {
  final String message;
  final SnackBarType type;
  final VoidCallback onDismiss;

  const _TopSnackBar({
    required this.message,
    required this.type,
    required this.onDismiss,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).padding.top + 10,
      left: 20,
      right: 20,
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: type == SnackBarType.error
                ? BaseColors.statusCancelled
                : BaseColors.statusConfirmed,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                offset: const Offset(0, 4),
                color: Colors.black.withValues(alpha: 0.1),
              ),
            ],
          ),
          child: Row(
            children: [
              Icon(
                type == SnackBarType.error
                    ? Icons.error_outline
                    : Icons.check_circle_outline,
                color: BaseColors.white,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  message,
                  style: BaseTextStyles.poppinsMediumBold.copyWith(
                    color: BaseColors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: onDismiss,
                child: const Icon(
                  Icons.close,
                  color: BaseColors.white,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
