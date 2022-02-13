import 'package:desafio_tres/constants/colors.dart';
import 'package:flutter/material.dart';

AppColor color = AppColor();
bool _showPassword = false;

class TextFieldDecoration {
  final InputDecoration nameDecoration = InputDecoration(
    prefixIcon: Icon(
      Icons.person_outline,
      color: color.primaryColor,
    ),
    labelText: "Full name",
    labelStyle: TextStyle(color: color.primaryColor),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: color.primaryColor, width: 100),
      borderRadius: BorderRadius.circular(16),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: color.primaryColor),
        borderRadius: BorderRadius.circular(16)),
  );
  final InputDecoration emailDecoration = InputDecoration(
    prefixIcon: Icon(
      Icons.mail_outline_rounded,
      color: color.primaryColor,
    ),
    labelText: "E-mail",
    labelStyle: TextStyle(color: color.primaryColor),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: color.primaryColor, width: 100),
      borderRadius: BorderRadius.circular(16),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: color.primaryColor),
        borderRadius: BorderRadius.circular(16)),
  );
  final InputDecoration passDecoration = InputDecoration(
    prefixIcon: Icon(
      Icons.lock_outline_rounded,
      color: color.primaryColor,
    ),
    suffixIcon: GestureDetector(
      onTap: () {
        print("Toquei");
      },
      child: Icon(
        _showPassword == false ? Icons.visibility_off_outlined : Icons.visibility_outlined,
        color: color.primaryColor,
      ),
    ),
    labelText: "Password",
    labelStyle: TextStyle(color: color.primaryColor),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: color.primaryColor, width: 100),
      borderRadius: BorderRadius.circular(16),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: color.primaryColor),
        borderRadius: BorderRadius.circular(16)),
  );
  final InputDecoration cpfDecoration = InputDecoration(
    prefixIcon: Icon(
      Icons.credit_card,
      color: color.primaryColor,
    ),
    labelText: "Cpf",
    labelStyle: TextStyle(color: color.primaryColor),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: color.primaryColor, width: 100),
      borderRadius: BorderRadius.circular(16),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: color.primaryColor),
        borderRadius: BorderRadius.circular(16)),
  );
  final InputDecoration rgDecoration = InputDecoration(
    prefixIcon: Icon(
      Icons.article_outlined,
      color: color.primaryColor,
    ),
    labelText: "Full name",
    labelStyle: TextStyle(color: color.primaryColor),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: color.primaryColor, width: 100),
      borderRadius: BorderRadius.circular(16),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: color.primaryColor),
        borderRadius: BorderRadius.circular(16)),
  );
  final InputDecoration phoneDecoration = InputDecoration(
    prefixIcon: Icon(
      Icons.phone_android_rounded,
      color: color.primaryColor,
    ),
    labelText: "Full name",
    labelStyle: TextStyle(color: color.primaryColor),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: color.primaryColor, width: 100),
      borderRadius: BorderRadius.circular(16),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: color.primaryColor),
        borderRadius: BorderRadius.circular(16)),
  );
}
