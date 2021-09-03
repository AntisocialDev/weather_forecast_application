import 'package:flutter/material.dart';
import 'package:ollie_ride/appColors/colors.dart';
import 'package:ollie_ride/util/util.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  MaterialStateProperty<Color> _materialColor(Color color) {
    return MaterialStateProperty.all(color);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17.0),
      child: Container(
        height: 44.0,
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
          onPressed: () {},
          child: Text('Login'),
        ),
      ),
    );
  }
}
