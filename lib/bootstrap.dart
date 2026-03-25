import 'dart:async';
import 'package:booking_app_mobile/injection.dart';
import 'package:flutter/widgets.dart';
import 'package:booking_app_mobile/infrastructure/core/auth_session/auth_session.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  final authSession = getIt<AuthSession>();
  await authSession.init();

  runApp(await builder());
}
