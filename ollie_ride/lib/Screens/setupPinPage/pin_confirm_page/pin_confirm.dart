import 'package:flutter/material.dart';

import 'package:ollie_ride/Screens/setupPinPage/pin_confirm_page/widgets/confirm_pin_field.dart';
import 'package:ollie_ride/Screens/setupPinPage/pin_confirm_page/widgets/create_pin_button.dart';
import 'package:ollie_ride/Screens/setupPinPage/pin_setup_page/pin_setup.dart';
import 'package:ollie_ride/appColors/colors.dart';
import 'package:ollie_ride/util/util.dart';

class PinConfirmPage extends StatefulWidget {
  const PinConfirmPage({Key? key}) : super(key: key);

  @override
  _PinConfirmPageState createState() => _PinConfirmPageState();
}

class _PinConfirmPageState extends State<PinConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.whiteSecondaryColor,
      ),
      body: Center(
        child: Container(
          width: Util().widthScreen(context) / 1.2,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              pinSetupText(),
              Spacer(),
              ConfirmPinField(),
              Spacer(),
              CreatePinButton(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
