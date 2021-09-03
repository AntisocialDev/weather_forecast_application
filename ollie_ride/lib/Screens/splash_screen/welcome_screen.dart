import 'package:flutter/material.dart';
import 'package:ollie_ride/Screens/signUp/sign_up.dart';
import 'package:ollie_ride/appColors/colors.dart';
import 'package:ollie_ride/util/navigation.dart';
import 'package:ollie_ride/util/reusable.dart';
import 'package:ollie_ride/util/util.dart';
import 'package:page_transition/page_transition.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo goes here
              OllieLogo(
                height: 150,
                width: 150,
              ),

              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: CarImage(width: 150, height: 150),
              ),

              Container(
                width: Util().widthScreen(context),
                child: ElevatedButton(
                  // padding: EdgeInsets.symmetric(vertical: 15, horizontal: 145),
                  onPressed: () {
                    print("SignUP Button");
                    Navigation().navigation(
                      context,
                      SignUP(),
                      PageTransitionType.rightToLeft,
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    )),
                  ),

                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                      color: AppColors.whiteSecondaryColor,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(
                  width: Util().widthScreen(context),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      )),
                    ),
                    onPressed: () {
                      print("Login Button");
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: AppColors.whiteSecondaryColor,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
