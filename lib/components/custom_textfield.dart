import 'package:desafio_tres/decorations/textfield_decoration.dart';
import 'package:flutter/material.dart';

enum Field { name, email, pass, cpf, rg, phone }

class CustomTextField extends StatelessWidget {
  final Field field;

  const CustomTextField({Key? key, required this.field}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextFieldDecoration fieldDecoration = TextFieldDecoration();

    late InputDecoration decoration;

    switch (field) {
      case Field.name:
        decoration = fieldDecoration.nameDecoration;
        break;
      case Field.email:
        decoration = fieldDecoration.emailDecoration;
        break;
      case Field.pass:
        decoration = fieldDecoration.passDecoration;
        break;
      case Field.cpf:
        decoration = fieldDecoration.cpfDecoration;
        break;
      case Field.rg:
        decoration = fieldDecoration.rgDecoration;
        break;
      case Field.phone:
        decoration = fieldDecoration.phoneDecoration;
        break;
      default:
    }

    return TextFormField(
      decoration: decoration,
    );
  }
}
