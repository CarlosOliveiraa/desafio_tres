import 'package:desafio_tres/components/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CustomTextField(
              field: Field.name,
            ),
            CustomTextField(
              field: Field.email,
            ),
            CustomTextField(
              field: Field.pass,
            ),
          ],
        ),
      ),
    );
  }
}
