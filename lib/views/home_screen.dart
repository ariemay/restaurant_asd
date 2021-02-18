import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:restaurant_asd/components/card.dart';
import 'package:restaurant_asd/controllers/home_controller.dart';
import 'package:restaurant_asd/models/restaurants.dart';
import 'package:restaurant_asd/utils/screen_size.dart';

class HomeScreen extends GetView<HomeController> {

  List<Restaurants> listRestaurants = [
    Restaurants(
      name: "Martabak",
      address: "Jalan riau",
      description: "Enak sekali",
      email: "asdasd@asdad.com",
      image: "martabak.jpg",
      phonenumber: "12414123123",
      rating: "5/5",
      website: "asdad.com"
    ),
    Restaurants(
        name: "Martabak",
        address: "Jalan riau",
        description: "Enak sekali",
        email: "asdasd@asdad.com",
        image: "martabak.jpg",
        phonenumber: "12414123123",
        rating: "5/5",
        website: "asdad.com"
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        height: ScreenSize.screenHeight(context),
        width: double.infinity,
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.all(20),
            child: getRestolist(listRestaurants, controller))

          ],
        ),
      ),
    );
  }

}

Widget getRestolist(List<Restaurants> resto,
    HomeController controller) {
  List<Widget> list = new List<Widget>();
  for (var i=0; i<resto.length; i++) {
    list.add(
      ListCard(list: resto,
      index: i,
      goDetail: (test) => print("go detail"),)
    );
  }
  return new Column(children: list);
}
