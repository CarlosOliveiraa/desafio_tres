import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CpfMask extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var cpf = newValue.text;

    if (cpf.length > 14 || !RegExp(r'^([\d-.]+)?$').hasMatch(cpf)) {
      return oldValue;
    }
    cpf = cpf.replaceAll(RegExp(r'\D'), '');
    final characters = cpf.characters.toList();
    var formatted = '';

    for (var i = 0; i < characters.length; i++) {
      if ([3, 6, 9].contains(i)) {
        formatted += i == 9 ? "-" : "."; //ternario

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