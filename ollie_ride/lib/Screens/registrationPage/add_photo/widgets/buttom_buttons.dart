import 'package:flutter/material.dart';
import 'package:ollie_ride/Screens/setupPinPage/pin_setup_page/pin_setup.dart';
import 'package:ollie_ride/appColors/colors.dart';
import 'package:ollie_ride/util/navigation.dart';
import 'package:ollie_ride/util/util.dart';
import 'package:page_transition/page_transition.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 34.0),
      child: Column(
        children: [
          //Add photo button
          Container(
            width: Util().widthScreen(context),
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  )),
                  foregroundColor: MaterialStateProperty.all(
                    AppColors.textWhiteOnPrimaryColor,
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    AppColors.bluePrimaryColor,
                  )),
              onPressed: () {
                Navigation().navigation(
                    context, PinSetupPage(), PageTransitionType.rightToLeft);
              },
              child: Text('Add photo'),
            ),
          ),
          //Skip Button
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              width: Util().widthScreen(context),
              child: TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    )),
                    foregroundColor: MaterialStateProperty.all(
                      AppColors.textWhiteOnPrimaryColor,
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      AppColors.bluePrimaryColor,
                    )),
                onPressed: () {},
                child: Text('Skip'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
