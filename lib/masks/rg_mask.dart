import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RGMask extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var rg = newValue.text;

    if (rg.length > 10 || !RegExp(r'^([\d-.]+)?$').hasMatch(rg)) {
      return oldValue;
    }

    rg = rg.replaceAll(RegExp(r'\D'), '');
    final characters = rg.characters.toList();
    var formatted = '';

    for (var i = 0; i < characters.length; i++) {
      if ([2, 5, 8].contains(i)) {
        formatted += i == 5 ? "-" : ".";
      }
      formatted += characters[i];
    }

    return newValue.copyWith(
      text: formatted,
      selection:
          TextSelection.fromPosition(TextPosition(offset: formatted.length)),
    );
  }
}
