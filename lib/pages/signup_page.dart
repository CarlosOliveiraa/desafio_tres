import 'package:desafio_tres/components/botton_background.dart';
import 'package:desafio_tres/components/confirm_button.dart';
import 'package:desafio_tres/components/custom_textfield.dart';
import 'package:desafio_tres/components/top_widget.dart';
import 'package:desafio_tres/controller/text_controller.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

import 'profile_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  AppColor colors = AppColor();
  bool _showPassword = false;
  bool _showPassword2 = false;
  final controller = TextController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          TopWidget(
            width: size.width,
            height: size.height * 0.25,
            icone: "assets/images/mao.png",
            greeting: " Hello,",
            title: " Are you new here?",
            subTitle: "  if you have an acount/ Login",
          ),
          BottonBackGround(
            width: size.width,
            height: size.height,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Full name"),
                  //FULL NAME FIELD...
                  CustomTextField(
                    controller: controller.nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Fill you name";
                      }
                    },
                    keyboardType: TextInputType.name,
                    labelText: "Full name",
                    prefixIcon: Icon(
                      Icons.person_outline_rounded,
                      color: colors.primaryColor,
                    ),
                  ),
                  //E-MAIL FIELD...
                  const Text("E-mail"),
                  CustomTextField(
                    controller: controller.emailController,
                    validator: (value) {
                      if (value == null || !value.contains("@")) {
                        return "E-mail inválido";
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    labelText: "E-mail",
                    prefixIcon: Icon(
                      Icons.mail_outline_rounded,
                      color: colors.primaryColor,
                    ),
                  ),
                  //PASSWORD FIELD...
                  const Text("Password"),
                  CustomTextField(
                    controller: controller.passController,
                    validator: (pass1) {
                      if (pass1!.length < 6) {
                        return "Invalid password";
                      }
                    },
                    labelText: "Password",
                    prefixIcon:
                        Icon(Icons.lock_outline, color: colors.primaryColor),
                    suffixIcon: GestureDetector(
                      child: Icon(
                        _showPassword == false
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: colors.primaryColor,
                      ),
                      onTap: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ),
                    keyboardType: TextInputType.number,
                    obscureText: _showPassword == false ? true : false,
                  ),
                  //PASSWORD FIELD CONFIRMATION...
                  const Text("Confirm password"),
                  CustomTextField(
                    controller: controller.confirmPassController,
                    validator: (pass2) {
                      if (pass2!.length < 6) {
                        return "Invalid password";
                      } else if (pass2 != controller.passController.text) {
                        return "Passwords do not match";
                      }
                    },
                    labelText: "Password",
                    prefixIcon:
                        Icon(Icons.lock_outline, color: colors.primaryColor),
                    suffixIcon: GestureDetector(
                      child: Icon(
                        _showPassword2 == false
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: colors.primaryColor,
                      ),
                      onTap: () {
                        setState(() {
                          _showPassword2 = !_showPassword2;
                        });
                      },
                    ),
                    keyboardType: TextInputType.number,
                    obscureText: _showPassword2 == false ? true : false,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ConfirmButton(
                    width: size.width * 0.95,
                    height: size.height * 0.08,
                    text: "Sign Up",
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(
                              fullName: controller.fullName,
                            ),
                          ),
                        );
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
