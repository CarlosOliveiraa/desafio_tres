import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ConfirmButton extends StatelessWidget {
  final double width;
  final double height;
  final void Function()? onTap;
  final String text;
  const ConfirmButton(
      {Key? key,
      this.width = 268,
      this.height = 48,
      this.onTap,
      this.text = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColor colors = AppColor();

    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: colors.primaryColor,
        ),
      ),
    );
  }
}
