import 'package:flutter/material.dart';
import 'package:ollie_ride/appColors/colors.dart';
import 'package:ollie_ride/provider/pin_provider.dart';
import 'package:ollie_ride/util/util.dart';
import 'package:provider/provider.dart';

class CreatePinButton extends StatelessWidget {
  const CreatePinButton({Key? key}) : super(key: key);

  MaterialStateProperty<Color> _materialColor(Color color) {
    return MaterialStateProperty.all(color);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Util().widthScreen(context),
      child: ElevatedButton(
        style: ButtonStyle(
          //fixedSize: MaterialStateProperty.all(Size.),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          )),
          foregroundColor: _materialColor(AppColors.textWhiteOnPrimaryColor),
          backgroundColor: _materialColor(AppColors.bluePrimaryColor),
        ),
        onPressed: () {
          Provider.of<PinProvider>(context, listen: false)
              .createPinClicked(context);
        },
        child: Text('Create PIN'),
      ),
    );
  }
}
