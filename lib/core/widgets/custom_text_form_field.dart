import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:flutter/material.dart';

Widget customTextFormField(BuildContext context,
    {String? labelText,
    String? hintText,
    Widget? prefixIcon,
    String? Function(String?)? validator,
    TextInputType? keyboardType,
    TextEditingController? controller,
    Widget? suffixIcon,
    bool obscureText = false}) {
  return TextFormField(
    validator: validator,
    style: AppFonts.getCaptionFont(
      context,
      fontColor: AppColors.black,
    ),
    keyboardType: keyboardType,
    obscureText: obscureText,
    controller: controller,
    cursorColor: AppColors.primary,
    decoration: InputDecoration(
      prefixIcon: prefixIcon,
      hintText: hintText,
      hintStyle: AppFonts.getCaptionFont(context),
      labelText: labelText,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelStyle: AppFonts.getCaptionFont(
        context,
        fontColor: AppColors.black,
      ),
      contentPadding: const EdgeInsets.only(
        left: 15,
        right: 10,
        top: 0,
        bottom: 0,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.primary,
        ),
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          30,
        ),
        borderSide: BorderSide(
          color: AppColors.grey.withOpacity(.4),
        ),
      ),
      suffixIcon: suffixIcon,
      border: const UnderlineInputBorder(
        borderSide: BorderSide.none,
      ),
    ),
  );
}
