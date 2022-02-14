import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProfileWidget extends StatelessWidget {
  final double size;

  const ProfileWidget({Key? key, this.size = 83}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppColor colors = AppColor();

    return Container(
      alignment: Alignment.bottomRight,
      margin: const EdgeInsets.only(top: 20, bottom: 25),
      width: size,
      height: size,
      child: LayoutBuilder(builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth * 0.35,
          child: FloatingActionButton(
            backgroundColor: colors.primaryColor,
            onPressed: () {},
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: constraints.maxWidth * 0.19,
            ),
          ),
        );
      }),
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/foto.jpg"),
        ),
        borderRadius: BorderRadius.circular(35),
      ),
    );
  }
}
