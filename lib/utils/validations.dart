import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Validation extends GetxController {
  String validateLoginPassword(String value) {
    if (value.length < 1) {
      return 'Password tidak boleh kosong.';
    } else {
      return null;
    }
  }

  String validateRegisterUsername(String value) {
    if ((value.length < 3) || (value.length > 30)) {
      return 'Username must between 3 and 30 characters';
    } else {
      return null;
    }
  }

  String validateLoginUsername(String value) {
    if (value.length < 1) {
      print(value);
      return 'Username tidak boleh kosong.';
    } else {
      return null;
    }
  }

  // Validation change password
  String validateNewPassword(String value) {
    if (value.length < 8)
      return 'Enter password at least  8 char.';
    else if (value.length > 12)
      return 'Enter password max 12 char.';
    else
      return null;
  }

  // Validation old password
  String changeOldPassword(String value) {
    if (value.isEmpty)
      return 'Please enter your old password.';
    else
      return null;
  }

  //Validation confirm password
  String validateChangePasswordConfirm(String value, String oldPassword) {
    if (value.isEmpty)
      return 'Please enter your new password.';
    else if (value != oldPassword)
      return 'Not match, Please try again.';
    else
      return null;
  }

  // Validation username forget password
  String validationUsernameFP(String value) {
    if (value.isEmpty)
      return 'Please enter your username';
    else
      return null;
  }

  // Validation password temporary
  String validationPasswordTemp(String value) {
    if (value.isEmpty)
      return 'Please enter your password';
    else
      return null;
  }

  String validateConfirmPassword(
      String value, String phoneNumber, String password) {
    if (value.length < 8)
      return 'Password minimal 8 karakter.';
    else if (value == phoneNumber)
      return 'Password tidak boleh sama dengan nomor HP';
    else if (value != password)
      return 'Konfirmasi Password harus sama';
    else
      return null;
  }

  String validatePassword(String value) {
    if (value == "") {
      return 'Password tidak boleh kosong.';
    } else if (!RegExp(r'^(?=.*[0-9]).+').hasMatch(value)) {
      return 'Password harus terdapat minimum 1 angka.';
    } else if (!RegExp(r'^(?=.*[a-z]).+').hasMatch(value)) {
      return 'Password harus terdapat minimum 1 huruf kecil.';
    } else if (!RegExp(r'^(?=.*[A-Z]).+').hasMatch(value)) {
      return 'Password harus terdapat minimum 1 huruf kapital.';
    } else if (!RegExp(r'''^(?=.*[~!@#$%^&*_\-+=`|\\\(){}[\]:;"'<>,.?\/;]).+''')
        .hasMatch(value)) {
      return 'Password harus terdapat minimum 1 spesial karakter.';
    } else if (value.length < 8) {
      return 'Password minimal 8 karakter';
    } else {
      return null;
    }
  }


  String validateRegisterPassword(String value) {
    bool hasUppercase = value.contains(new RegExp(r'[A-Z]'));
    bool hasDigits = value.contains(new RegExp(r'[0-9]'));
    if ((value.length < 8) || (value.length > 32)) {
      return 'Password must between 8 and 32 characters';
    } else if (!hasUppercase) {
      return 'Password must have at least 1 UPPERCASE';
    } else if (!hasDigits) {
      return 'Password must have at least 1 digit number';
    }
  }

  String validateRegisterConfirmPassword(String value, String pass) {
    print(value);
    print(pass);
    if (value != pass) {
      return "Password not match";
    } else {
      return null;
    }
  }

  String validateRegisterNickname(String value) {
    if ((value.length < 3) || (value.length > 21)) {
      return 'Password must between 3 and 21 characters';
    } else {
      return null;
    }
  }

  String validateRegisterDateofBirth(String value) {
    var arr = value.split("-");
    int lengthDay = int.parse(arr[0]);
    int lengthMonth = int.parse(arr[1]);
    int lengthYear = int.parse(arr[2]);
    if ((lengthDay < 31) && (lengthMonth < 13) && (lengthYear < 9999)) {
      return null;
    } else {
      return "Invalid date format";
    }
  }

  String validateRegisterAddress(String value) {
    var splittedString = value.split(" ");
    if (splittedString[splittedString.length - 1] != "Street") {
      return "Must ended with 'Street'";
    } else {
      return null;
    }
  }

  String validateRegisterNationality(String value) {
    if (value.length == 0) {
      return "Must be filled";
    } else {
      return null;
    }
  }

}