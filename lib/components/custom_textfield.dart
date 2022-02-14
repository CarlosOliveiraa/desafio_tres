import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType keyboardType;
  final bool obscureText;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final List<TextInputFormatter>? mask;

  final String? Function(String?)? validator;

  const CustomTextField({
    Key? key,
    required this.keyboardType,
    this.obscureText = false,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.labelText, this.controller, this.mask,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColor colors = AppColor();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextFormField(
        inputFormatters: mask,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: prefixIcon,
          prefixIconColor: colors.primaryColor,
          suffixIcon: suffixIcon,
          suffixIconColor: colors.primaryColor,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: colors.primaryColor),
              borderRadius: BorderRadius.circular(16)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colors.primaryColor),
              borderRadius: BorderRadius.circular(16)),
        ),
        validator: validator,
      ),
    );
  }
}
