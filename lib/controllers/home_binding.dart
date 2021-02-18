import 'package:get/get.dart';
import 'package:restaurant_asd/controllers/home_controller.dart';


class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}