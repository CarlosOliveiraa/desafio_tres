import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../controller/country_controller.dart';
import 'custom_countrylist.dart';

class CountryField extends StatefulWidget {
  final double width;
  final double height;

  const CountryField({
    Key? key,
    this.width = 268,
    this.height = 44,
  }) : super(key: key);

  @override
  _CountryFieldState createState() => _CountryFieldState();
}

class _CountryFieldState extends State<CountryField> {
  final controller = CountryController();

  @override
  void initState() {
    setState(() {
      controller.setInitial(controller.countryList[0]);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppColor colors = AppColor();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7),
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        border: Border.all(color: colors.primaryColor),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(controller.countryList[7].bandeira!),
              ),
            ),
          ),
          Text(controller.countryList[7].pais!),
          const SizedBox(
            width: 230,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                openList();
              });
            },
            child: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.grey,
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}

Widget openList() {
  return CustomCountry();
}
