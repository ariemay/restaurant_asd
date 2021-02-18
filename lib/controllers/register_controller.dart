import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:restaurant_asd/models/users.dart';
import 'package:restaurant_asd/services/SqliteDB.dart';
import 'package:uuid/uuid.dart';

class RegisterController extends GetxController {

  GlobalKey<FormState> regKey = new GlobalKey();
  Users users;

  String gender;
  var uuid = Uuid();

  TextEditingController usernameController,
      passwordController,
      confirmPasswordController,
      nationalityController,
      dateofbirtController,
      nicknameController,
      addressController
  ;

  @override
  void onInit() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    nationalityController = TextEditingController();
    dateofbirtController = TextEditingController();
    nicknameController = TextEditingController();
    addressController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    nationalityController.dispose();
    dateofbirtController.dispose();
    nicknameController.dispose();
    addressController.dispose();
    super.dispose();
  }

  void selectFemale(String value) {
    print(value);
    gender = "female";
    update();
  }

  void selectMale(String value) {
    print(value);
    gender = "male";
    update();
  }

  void registerNewUser() {
    if (regKey.currentState.validate()) {
      regKey.currentState.save();
      users = Users(
          username: usernameController.text,
          password: passwordController.text,
          gender: gender,
          nickname: nicknameController.text,
          nationality: nationalityController.text,
          dateofbirth: dateofbirtController.text,
          address: addressController.text
      );


      SqliteDB().registerUser(users).then((value) => print(value));
      // print(users);
    }
  }

  void clearTextField() {
    usernameController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
    nicknameController.clear();
    dateofbirtController.clear();
    addressController.clear();
    gender = "male";
    nationalityController.clear();
  }
}