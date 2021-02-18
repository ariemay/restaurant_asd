import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:restaurant_asd/services/SqliteDB.dart';

class LoginController extends GetxController {

  TextEditingController usernameTextField;
  TextEditingController passwordTextField;

  GlobalKey<FormState> key = new GlobalKey();

  bool validate = false;

  @override
  void onInit() {
    usernameTextField = TextEditingController();
    passwordTextField = TextEditingController();
    // SqliteDB().getAll().then((value) => print(value));
    super.onInit();
  }

  void clearTextField() {
    usernameTextField.clear();
    passwordTextField.clear();
  }

  void loginButtonPressed(BuildContext context) {
    if (key.currentState.validate()) {
      key.currentState.save();
      login(usernameTextField.text, passwordTextField.text);
    } else {
      validate = true;
      update();
    }
  }

  void login(String username, String password) {
    SqliteDB().getAll().then((value) {
      print(value);
      print(username);
      print(password);
      for (var i=0; i<value.length; i++) {
        if ((value[i]["username"] == username) && (value[i]["password"] == password)) {
          print("home");
          Get.toNamed("/home");
        }
      }
    });
  }

  @override
  void dispose() {
    usernameTextField.dispose();
    passwordTextField.dispose();
    super.dispose();
  }
}