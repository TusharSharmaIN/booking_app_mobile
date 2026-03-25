import 'package:flutter/material.dart';
import 'package:booking_app_mobile/presentation/theme/base_colors.dart';
import 'package:booking_app_mobile/presentation/theme/base_text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String? hint;
  final ValueChanged<String>? onChanged;
  final bool obscureText;
  final TextInputType? keyboardType;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final String? errorText;
  final int maxLines;
  final bool alignLabelWithHint;

  const CustomTextField({
    super.key,
    required this.label,
    this.hint,
    this.onChanged,
    this.obscureText = false,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.errorText,
    this.maxLines = 1,
    this.alignLabelWithHint = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: BaseTextStyles.poppinsMediumBold.copyWith(
            fontSize: 14,
            color: BaseColors.black,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          onChanged: onChanged,
          obscureText: obscureText,
          keyboardType: keyboardType,
          maxLines: maxLines,
          style: BaseTextStyles.poppinsMediumRegular.copyWith(
            color: BaseColors.black,
          ),
          decoration: InputDecoration(
            hintText: hint,
            alignLabelWithHint: alignLabelWithHint,
            hintStyle: BaseTextStyles.poppinsMediumRegular.copyWith(
              color: BaseColors.grey400,
            ),
            errorText: errorText,
            prefixIcon: prefixIcon != null
                ? Icon(prefixIcon, color: BaseColors.grey500, size: 20)
                : null,
            suffixIcon: suffixIcon,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            filled: true,
            fillColor: BaseColors.grey50,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: BaseColors.grey200),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: BaseColors.grey200),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: BaseColors.black, width: 1.5),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.red, width: 1),
            ),
          ),
        ),
      ],
    );
  }
}
