import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ollie_ride/Screens/setupPinPage/pin_confirm_page/pin_confirm.dart';

import 'package:ollie_ride/appColors/colors.dart';
import 'package:ollie_ride/util/navigation.dart';
import 'package:ollie_ride/util/util.dart';
import 'package:page_transition/page_transition.dart';

//Provider class for pin
class PinProvider with ChangeNotifier {
  String pin = '';
  String confirmPin = '';

  //Automatically called when all pin fields are filled
  void onPinSubmit(String value) {
    pin = value;
    notifyListeners();
  }

  //Called when the proceed button is clicked
  void proceedButtonClicked(BuildContext context) {
    //checks if pin length is 4
    if (pin.length < 4) {
      //pin less than 4 and too short
      print('pin too short');
      Util().showSnackBar(context, 'Error: Please fill all pin fields',
          AppColors.redErrorColor);
    } else {
      //Pin length is okay
      print('Pin Okay!');
      //navigate to the confirm pin page
      Navigation().navigation(
        context,
        PinConfirmPage(),
        PageTransitionType.rightToLeft,
      );
    }
  }

  //Called when the create pin button is clicked
  void createPinClicked(BuildContext context) {
    //Checks the confirm pin length to see if it's 4
    if (confirmPin.length < 4) {
      //Pin too short
      print('pin too short');
      Util().showSnackBar(context, 'Error: Please fill all pin fields',
          AppColors.redErrorColor);
    } else {
      //pin length is okay
      //Now check of both pins match
      if (confirmPin == pin) {
        //The pins match
        print('pin is a match');
        Util().showSnackBar(context, 'Pin Successfully Created', Colors.green);
      } else {
        //The pins do not match
        Util().showSnackBar(
            context, 'Error: Pins do not Match!', AppColors.redErrorColor);
      }
    }
  }
}
