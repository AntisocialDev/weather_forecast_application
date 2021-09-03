import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ollie_ride/Screens/setupPinPage/pin_setup_page/widgets/proceed_button.dart';
import 'package:ollie_ride/Screens/setupPinPage/pin_setup_page/widgets/setup_pin_field.dart';
import 'package:ollie_ride/appColors/colors.dart';
import 'package:ollie_ride/util/util.dart';

class PinSetupPage extends StatefulWidget {
  const PinSetupPage({Key? key}) : super(key: key);

  @override
  _PinSetupPageState createState() => _PinSetupPageState();
}

class _PinSetupPageState extends State<PinSetupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.whiteSecondaryColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Container(
          width: Util().widthScreen(context) / 1.2,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              pinSetupText(),
              Spacer(),
              SetupPinField(),
              Spacer(),
              ProceedButton(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget pinSetupText() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'PIN Setup',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
            'You\'re almost done. Set up a 4-digit PIN for logging into this application'),
      )
    ],
  );
}
