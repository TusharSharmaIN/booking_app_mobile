import 'package:booking_app_mobile/presentation/theme/base_colors.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class BaseTextStyles {
  static final TextStyle _baseTextStyle = GoogleFonts.poppins(
    textStyle: const TextStyle(color: BaseColors.black),
  );

  // static TextStyle get poppinsTinyBold =>
  //     _baseTextStyle.copyWith(fontSize: 8, fontWeight: FontWeight.w700);

  // static TextStyle get poppinsExtraSmallBold =>
  //     _baseTextStyle.copyWith(fontSize: 10, fontWeight: FontWeight.w700);

  // static TextStyle get poppinsSmallRegular =>
  //     _baseTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400);

  // static TextStyle get poppinsSmallSemiBold =>
  //     _baseTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w500);

  static TextStyle get poppinsSmallBold =>
      _baseTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w600);

  // static TextStyle get poppinsSemiMediumSemiBold => _baseTextStyle.copyWith(
  //       fontSize: 13,
  //       fontWeight: FontWeight.w500,
  //     );

  static TextStyle get poppinsSemiMediumBold =>
      _baseTextStyle.copyWith(fontSize: 13, fontWeight: FontWeight.w600);

  static TextStyle get poppinsSemiMediumRegular =>
      _baseTextStyle.copyWith(fontSize: 13, fontWeight: FontWeight.w400);

  static TextStyle get poppinsMediumRegular =>
      _baseTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400);

  // static TextStyle get poppinsMediumSemiBold =>
  //     _baseTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w500);

  static TextStyle get poppinsMediumBold =>
      _baseTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w600);

  static TextStyle get poppinsLargeRegularBold =>
      _baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w400);

  // static TextStyle get poppinsLargeSemiBold =>
  //     _baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w500);

  static TextStyle get poppinsExtraLargeBold =>
      _baseTextStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w700);

  static TextStyle get poppinsHugeBold =>
      _baseTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w600);

  // static TextStyle get poppinsHugeHeavyBold =>
  //     _baseTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w900);

  static TextStyle get poppinsDisplayBold =>
      _baseTextStyle.copyWith(fontSize: 32, fontWeight: FontWeight.bold);

  static TextStyle get poppinsLargeBold =>
      _baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold);

  static TextStyle get poppinsLargeRegular =>
      _baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w400);
}
