import 'package:desafio_tres/components/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  AppColor colors = AppColor();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Full name"),
              //FULL NAME FIELD...
              CustomTextField(
                keyboardType: TextInputType.name,
                labelText: "Full name",
                prefixIcon: Icon(
                  Icons.person_outline_rounded,
                  color: colors.primaryColor,
                ),
              ),
              //E-MAIL FIELD...
              Text("E-mail"),
              CustomTextField(
                keyboardType: TextInputType.emailAddress,
                labelText: "E-mail",
                prefixIcon: Icon(
                  Icons.mail_outline_rounded,
                  color: colors.primaryColor,
                ),
              ),
              //PASSWORD FIELD...
              Text("Password"),
              CustomTextField(
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
                keyboardType: TextInputType.emailAddress,
                obscureText: _showPassword == false ? true : false,
              ),
              //PASSWORD FIELD CONFIRMATION...
              Text("Confirm password"),
              CustomTextField(
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
                keyboardType: TextInputType.emailAddress,
                obscureText: _showPassword == false ? true : false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
