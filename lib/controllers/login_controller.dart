import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  TextEditingController usernameTextField;
  TextEditingController passwordTextField;

  @override
  void onInit() {
    usernameTextField = TextEditingController();
    passwordTextField = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    usernameTextField.dispose();
    passwordTextField.dispose();
    super.dispose();
  }
}