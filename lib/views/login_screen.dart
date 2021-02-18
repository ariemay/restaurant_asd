import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_asd/controllers/login_controller.dart';
import 'package:restaurant_asd/utils/screen_size.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Restaurant ASD"),),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: ScreenSize.screenHeight(context) * 0.1,
                ),
                Text("Login", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: ScreenSize.screenHeight(context) * 0.4,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
                        child: TextFormField(
                          controller: controller.usernameTextField,
                          // onSaved: (String val) {
                          //   username = val;
                          // },
                          // validator: (value) => controller.validateLoginUsername(),
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
                                  // fontSize: SizeConfig .safeBlockHorizontal * 4
                              ),
                              labelText: "Username",
                              // errorStyle: TextStyle(height: 0.h),
                              fillColor: Colors.white70
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: TextFormField(
                          controller: controller.usernameTextField,
                          // onSaved: (String val) {
                          //   username = val;
                          // },
                          // validator: (value) => controller.validateLoginUsername(),
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
                                // fontSize: SizeConfig .safeBlockHorizontal * 4
                              ),
                              labelText: "Username",
                              // errorStyle: TextStyle(height: 0.h),
                              fillColor: Colors.white70
                          ),
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              // onPressed: () {
                              //
                              // },
                              child: Text(
                                "Reset",
                                // style: TextStyle(
                                //     color: ThemeColor.PRIMARY, fontSize: SizeConfig.safeBlockHorizontal * 4
                                // ),
                              )),
                          TextButton(
                            onPressed: () {
                              Get.toNamed('/register');
                            },
                              child: Text(
                                "Register",
                                // style: TextStyle(
                                //     color: ThemeColor.PRIMARY, fontSize: SizeConfig.safeBlockHorizontal * 4
                                // ),
                              )),
                        ],
                      ),
                      SizedBox(
                        width: ScreenSize.screenWidth(context) * 0.7,
                        child: RaisedButton(onPressed: () => print("Test"),
                          child: Text("Login"),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.black)
                        ),)
                      )
                      ,
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                )
              ],
            )
          ),
        ),
      )
    );
  }
  
}