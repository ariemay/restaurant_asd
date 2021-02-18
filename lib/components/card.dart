import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_asd/components/rounded_button.dart';
import 'package:restaurant_asd/models/restaurants.dart';
import 'package:restaurant_asd/utils/screen_size.dart';

typedef void FunctionCallback(id);

class ListCard extends StatelessWidget{
  final List<Restaurants> list;
  int index;
  final FunctionCallback goDetail;

  ListCard({this.list, this.index, this.goDetail});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(19),
            topRight: Radius.circular(19),
            bottomLeft: Radius.circular(19),
            bottomRight: Radius.circular(19)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 10,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      width: ScreenSize.screenWidth(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19.0),
        ),
        color: Colors.white,
        shadowColor: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: ScreenSize.screenWidth(context),
                height: 169,
                margin: EdgeInsets.only(left: 0, right: 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(19.0),
                        topRight: Radius.circular(19.0)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/${list[index].image}"),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                    ))),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    list[index].name ?? "",
                    style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(top: 8)),
                  Text(
                    list[index].address ?? "",
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(padding: EdgeInsets.only(top: 12)),
                  Row(
                    children: [
                      Spacer(),
                      Image.asset(
                        "assets/icons/meja.png",
                        scale: 10,
                      ),
                      Padding(padding: EdgeInsets.only(right: 8)),
                      Text(
                        "${list[index].rating}",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 16)),
                  RoundedButton(
                      text: "Detail",
                      callback: () => Get.toNamed("/detail"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}