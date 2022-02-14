import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  final double width;
  final double height;

  final String title;
  final String subTitle;

  const TopWidget(
      {Key? key,
      this.width = 310,
      this.height = 121,
      this.title = "",
      this.subTitle = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: width,
      height: height,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              subTitle,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ]),
    );
  }
}
