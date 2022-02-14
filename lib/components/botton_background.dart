import 'package:flutter/material.dart';

class BottonBackGround extends StatelessWidget {
  final double width;
  final double height;
  final Widget? child;

  const BottonBackGround(
      {Key? key, this.width = 310, this.height = 467, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      width: width,
      height: height,
      child: child,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.white),
    );
  }
}
