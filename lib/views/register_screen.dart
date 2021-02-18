import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_asd/controllers/register_controller.dart';
import 'package:restaurant_asd/utils/screen_size.dart';
import 'package:restaurant_asd/utils/validations.dart';

class RegisterScreen extends GetView<RegisterController> {
  String username, password, confirmPassword, nationality, nickname, dateofbirth, address;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Restaurant ASD"),),
    body: Container(
      child:
      Form(
      key: controller.regKey,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text("Register", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            child: TextFormField(
              controller: controller.usernameController,
              onSaved: (String val) {
                username = val;
              },
              validator: (value) => Validation().validateRegisterUsername(value),
              decoration: InputDecoration(
                  contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(
                    color: Colors.grey[800],
                  ),
                  labelText: "Username",
                  errorStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white70
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            child: TextFormField(
              controller: controller.passwordController,
              onSaved: (String val) {
                password = val;
              },
              validator: (value) => Validation().validateRegisterPassword(value),
              decoration: InputDecoration(
                  contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(
                    color: Colors.grey[800],
                  ),
                  labelText: "Password",
                  errorStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white70
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            child: TextFormField(
              controller: controller.confirmPasswordController,
              onSaved: (String val) {
                confirmPassword = val;
              },
              validator: (value) => Validation().validateRegisterConfirmPassword(value, controller.passwordController.text),
              decoration: InputDecoration(
                  contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(
                    color: Colors.grey[800],
                  ),
                  labelText: "Confirm Password",
                  errorStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white70
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            child: TextFormField(
              controller: controller.nicknameController,
              onSaved: (String val) {
                nickname = val;
              },
              validator: (value) => Validation().validateRegisterNickname(value),
              decoration: InputDecoration(
                  contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(
                    color: Colors.grey[800],
                  ),
                  labelText: "Nickname",
                  errorStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white70
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            child: TextFormField(
              controller: controller.dateofbirtController,
              onSaved: (String val) {
                dateofbirth = val;
              },
              validator: (value) => Validation().validateRegisterDateofBirth(value),
              decoration: InputDecoration(
                  contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(
                    color: Colors.grey[800],
                  ),
                  labelText: "Date of Birth (DD-MM-YYYY)",
                  errorStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white70
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            child: TextFormField(
              controller: controller.addressController,
              onSaved: (String val) {
                address = val;
              },
              validator: (value) => Validation().validateRegisterAddress(value),
              decoration: InputDecoration(
                  contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(
                    color: Colors.grey[800],
                  ),
                  labelText: "Address",
                  errorStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white70
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            child: TextFormField(
              controller: controller.nationalityController,
              onSaved: (String val) {
                nationality = val;
              },
              validator: (value) => Validation().validateRegisterNationality(value),
              decoration: InputDecoration(
                  contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(
                    color: Colors.grey[800],
                  ),
                  labelText: "Nationality",
                  errorStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white70
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(value: "male", groupValue: controller.gender, onChanged: controller.selectMale),
              Text("Male"),
              SizedBox(
                width: 10,
              ),
              Radio(value: "female", groupValue: controller.gender, onChanged: controller.selectFemale),
              Text("Female"),
            ],
          ),
          TextButton(
              onPressed: () {
                controller.clearTextField();
              },
              child: Text(
                "Reset",
                style: TextStyle(
                    color: Colors.black, fontSize: 14
                ),
              )),
          Spacer(),
          SizedBox(
            width: ScreenSize.screenWidth(context) * 0.5,
            child: RaisedButton(
              onPressed: () { 
                controller.registerNewUser();
              },
              child: Text("Register"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              color: Colors.red,
              textColor: Colors.white,
            ),
            
          ),
          SizedBox(
            height: 100,
          )
        ],
      )),
    ));
  }
}