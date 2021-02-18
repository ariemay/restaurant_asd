import 'package:get/get.dart';
import 'package:restaurant_asd/controllers/login_binding.dart';
import 'package:restaurant_asd/controllers/register_binding.dart';
import 'package:restaurant_asd/views/login_screen.dart';
import 'package:restaurant_asd/views/register_screen.dart';

class Routes {
  Routes._();

  static final routes = [
    GetPage(name: '/login', page: () => LoginScreen(), binding: LoginBinding()),
    GetPage(name: '/register', page: () => RegisterScreen(), binding: RegisterBinding()),
  ];
}