import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_asd/routes.dart';

void main() {
  runApp(MainApp());
}


class MainApp extends StatelessWidget {
  @override
  Widget build(Object context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      getPages: Routes.routes,
      theme: ThemeData.light()
          .copyWith(primaryColor: Colors.blue, accentColor: Colors.black),
    );
  }
}