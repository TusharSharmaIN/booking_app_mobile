import 'package:flutter/material.dart';

abstract class BaseColors {
  //=====================================
  // Neutral Colors
  //=====================================

  static const Color transparent = Colors.transparent;
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey = Colors.grey;
  static const Color grey100 = Color(0xFFF5F5F5);
  static const Color grey200 = Color(0xFFEEEEEE);
  static const Color grey300 = Color(0xFFE0E0E0);
  static const Color grey400 = Color(0xFFBDBDBD);
  static const Color grey500 = Color(0xFF9E9E9E);
  static const Color grey50 = Color(0xFFFAFAFA);
  static const Color textGrey700 = Color(0xFF616161);

  //=====================================
  // Status Colors
  //=====================================
  static const Color statusPending = Color(0xFFF57C00);
  static const Color statusPendingBg = Color(0xFFFFF3E0);
  static const Color statusConfirmed = Color.fromARGB(255, 116, 200, 120);
  static const Color statusConfirmedBg = Color(0xFFE8F5E9);
  static const Color statusCancelled = Color.fromARGB(255, 239, 108, 106);
  static const Color statusCancelledBg = Color(0xFFFFEBEE);
  static const Color statusCompleted = Color(0xFF616161);
  static const Color statusCompletedBg = Color(0xFFF5F5F5);
  static const Color statusUnknown = Color(0xFF1E88E5);
  static const Color statusUnknownBg = Color(0xFFE3F2FD);

  //=====================================
  // Primary Colors
  //=====================================
  static const Color primaryColor = Color(0xFFFAFAFA);
  static const Color backgroundBlack = Color(0xFF09090B);
  static const Color ebonyBlack = Color(0xCC111827);
  static const Color ebonyClay = Color(0xFF1F2937);
  static const Color backgroundGrey = Color(0xFF27272A);
  static const Color primaryTextGrey = Color(0xFFA1A1AA);
  static const Color santasGrey = Color(0xFFA1A1AA);
  static const Color chateauGrey = Color(0xFF9CA3AF);
  static const Color paleSky = Color(0xFF6B7280);
  static const Color primaryGreen = Color(0xFFA3E635);
  static const Color primaryYellow = Color(0xFFFDE047);
  static const Color textGrey = Color(0xFF646464);
  static const Color deepPurple = Color(0xFF6200EE);
}
