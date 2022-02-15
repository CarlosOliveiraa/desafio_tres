import 'package:flutter/cupertino.dart';

class TextController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController rgController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  String get fullName => nameController.value.text;
  String get password => passController.value.text;
}
