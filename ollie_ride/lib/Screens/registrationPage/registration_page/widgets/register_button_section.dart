import 'package:flutter/material.dart';
import 'package:ollie_ride/Screens/registrationPage/add_photo/add_photo.dart';
import 'package:ollie_ride/appColors/colors.dart';
import 'package:ollie_ride/util/navigation.dart';
import 'package:ollie_ride/util/util.dart';
import 'package:page_transition/page_transition.dart';

class RegisterButtonSection extends StatefulWidget {
  const RegisterButtonSection({Key? key, required this.formkey})
      : super(key: key);
  final GlobalKey<FormState> formkey;

  @override
  _RegisterButtonSectionState createState() => _RegisterButtonSectionState();
}

class _RegisterButtonSectionState extends State<RegisterButtonSection> {
  MaterialStateProperty<Color> _materialColor(Color color) {
    return MaterialStateProperty.all(color);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          Container(
            width: Util().widthScreen(context),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                )),
                foregroundColor:
                    _materialColor(AppColors.textWhiteOnPrimaryColor),
                backgroundColor: _materialColor(AppColors.bluePrimaryColor),
              ),
              onPressed: () {
                //check to see if text inputs are okay
                if (widget.formkey.currentState!.validate()) {
                  //All fields are okay and perform action
                  print('all fields okay');
                  Navigation().navigation(
                    context,
                    AddPhoto(),
                    PageTransitionType.rightToLeft,
                  );
                }
              },
              child: Text('Register'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already Registered?'),
              TextButton(
                style: ButtonStyle(
                    foregroundColor: _materialColor(
                  AppColors.bluePrimaryColor,
                )),
                onPressed: () {},
                child: Text('Login'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
