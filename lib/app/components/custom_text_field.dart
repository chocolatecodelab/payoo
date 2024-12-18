import 'package:flutter/material.dart';
import '../../../../config/theme/light_theme.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final Padding? suffixIcon;

  const CustomTextField(
      {super.key,
      required this.hintText,
      this.controller,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: 50,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: LightThemeColors.textHintColor),
          contentPadding: const EdgeInsets.symmetric(horizontal: 25),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: LightThemeColors.fieldColor),
          ),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Colors.white, // Border saat tidak fokus
            ),
          ),
          focusColor: Colors.red,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: LightThemeColors.primaryColor,
              width: 2, // Border saat fokus
            ),
          ),
          suffixIcon: suffixIcon,
          fillColor: LightThemeColors.fieldColor, // Warna latar
        ),
      ),
    );
  }
}
