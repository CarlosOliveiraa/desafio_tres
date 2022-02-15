import 'package:desafio_tres/controller/country_controller.dart';
import 'package:flutter/material.dart';

class CustomCountry extends StatelessWidget {
  final double width;
  final double height;

  const CustomCountry({Key? key, this.width = 500, this.height = 500})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final countryList = CountryController();

    return Container(
      padding: EdgeInsets.all(16),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: ListView.builder(
        itemCount: countryList.countryList.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        NetworkImage(countryList.countryList[index].bandeira!),
                  ),
                ),
              ),
              Text(
                countryList.countryList[index].pais!,
              )
            ],
          );
        },
      ),
    );
  }
}
