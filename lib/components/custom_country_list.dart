import 'package:desafio_tres/components/contry_selector.dart';
import 'package:desafio_tres/controller/country_controller.dart';
import 'package:desafio_tres/model/country_model.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomContryList extends StatefulWidget {
  const CustomContryList({Key? key}) : super(key: key);

  @override
  _CustomContryListState createState() => _CustomContryListState();
}

class _CustomContryListState extends State<CustomContryList> {
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

    return SizedBox(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "Country",
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        DecoratedBox(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: colors.primaryColor),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: DropdownButton(
              value: controller.initial,
              items: controller.countryList.map((country) {
                return DropdownMenuItem(
                  value: country,
                  child: CountrySelector(
                    country: country,
                  ),
                );
              }).toList(),
              onChanged: (Country? value) {
                setState(() {
                  controller.setInitial(value!);
                });
              },
              hint: const Text(
                "Select you country",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              borderRadius: BorderRadius.circular(10),
              isExpanded: true,
            ),
          ),
        )
      ]),
    );
  }
}
