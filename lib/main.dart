import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_asd/routes.dart';
import 'package:restaurant_asd/services/SqliteDB.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final db = SqliteDB();
  await db.countTable();

  // SqliteDB().createUserTable();

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