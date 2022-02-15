import 'package:desafio_tres/components/botton_background.dart';
import 'package:desafio_tres/components/confirm_button.dart';
import 'package:desafio_tres/components/custom_country_list.dart';
import 'package:desafio_tres/components/custom_textfield.dart';
import 'package:desafio_tres/controller/text_controller.dart';
import 'package:desafio_tres/masks/cpf_mask.dart';
import 'package:desafio_tres/masks/phone_mask.dart';
import 'package:desafio_tres/masks/rg_mask.dart';
import 'package:flutter/material.dart';

import '../components/profile_widget.dart';
import '../components/top_widget.dart';
import '../constants/colors.dart';
import 'home_page.dart';

class ProfilePage extends StatefulWidget {
  final String? fullName;

  const ProfilePage({
    Key? key,
    required this.fullName,
  }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  final controller = TextController();
  AppColor colors = AppColor();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopWidget(
              width: size.width,
              height: size.height * 0.25,
              icone: "assets/images/oculos3.png",
              greeting: " Setting up your",
              title: "profile",
              subTitle: "Add you profile photo",
            ),
            BottonBackGround(
              width: size.width,
              height: size.height * 1.3,
              child: Column(
                children: [
                  ProfileWidget(
                    size: size.width * 0.39,
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Display Name",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          // NAME FIELD...
                          CustomTextField(
                            initialValue: widget.fullName,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Fill you display name";
                              }
                            },
                            prefixIcon: Icon(
                              Icons.person_outline_rounded,
                              color: colors.primaryColor,
                            ),
                            keyboardType: TextInputType.name,
                          ),
                          const CustomContryList(),
                          const SizedBox(
                            height: 15,
                          ),
                          
                          const Text(
                            "CPF",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          //CPF FIELD...
                          CustomTextField(
                            mask: [CpfMask()],
                            validator: (value) {
                              if (value!.isEmpty || value.length < 14) {
                                return "Invalid CPF";
                              }
                            },
                            prefixIcon: Icon(
                              Icons.credit_card,
                              color: colors.primaryColor,
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          const Text(
                            "RG",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          //RG FIELD...
                          CustomTextField(
                            mask: [RGMask()],
                            validator: (value) {
                              if (value!.isEmpty || value.length < 10) {
                                return "Invalid RG";
                              }
                            },
                            prefixIcon: Icon(
                              Icons.credit_card,
                              color: colors.primaryColor,
                            ),
                            keyboardType: TextInputType.text,
                          ),
                          const Text(
                            "Phone Number",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          //PHONE NUMBER FIELD...
                          CustomTextField(
                            mask: [PhoneMask()],
                            validator: (value) {
                              if (value!.isEmpty || value.length < 14) {
                                return "Invalid number phone";
                              }
                            },
                            prefixIcon: Icon(
                              Icons.phone_android,
                              color: colors.primaryColor,
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          ConfirmButton(
                            width: size.width * 0.95,
                            height: size.height * 0.08,
                            text: "Confirm",
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              }
                            },
                          ),
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
