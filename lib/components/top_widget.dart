import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  final double width;
  final double height;
  final String icone;
  final String greeting;
  final String title;
  final String subTitle;

  const TopWidget(
      {Key? key,
      this.width = 310,
      this.height = 121,
      this.title = "",
      this.subTitle = "",
      this.icone = "",
      this.greeting = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: width,
      height: height,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  icone,
                  width: 25,
                  height: 25,
                ),
                Text(
                  greeting,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              subTitle,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ]),
    );
  }
}
