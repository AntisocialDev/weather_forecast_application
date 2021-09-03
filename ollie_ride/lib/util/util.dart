import 'package:flutter/material.dart';
import 'package:ollie_ride/appColors/colors.dart';

class Util {
  double widthScreen(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
      BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
  }

  BoxDecoration pinPutDecoration() {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Color(0xffC4C4C4),
          width: 3.0,
        ),
      ),
    );
  }

  BoxDecoration onSubmittedPinPutDecoration() {
    return pinPutDecoration().copyWith(
      border: Border(
        bottom: BorderSide(
          color: Colors.black,
          width: 3.0,
        ),
      ),
    );
  }

  GestureDetector showPin() {
    return GestureDetector(
      onTap: () {},
      child: Text(
        'Show PIN',
        style: TextStyle(
          color: AppColors.redErrorColor,
        ),
      ),
    );
  }

  TextFormField userInfoFormField(
      TextEditingController controller, String labelText, bool isEnabled,
      [String? hintText, String? Function(String? value)? validator]) {
    return TextFormField(
      controller: controller,
      //initialValue: controller.text,
      autofocus: false,
      enabled: isEnabled,
      validator: validator,
      decoration: InputDecoration(
        labelStyle: TextStyle(
          color: Color(0xff8F8F8F),
        ),
        labelText: labelText,
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  Widget agentSupport() {
    return FloatingActionButton(
      elevation: 10.0,
      onPressed: () {},
      child: Icon(Icons.support_agent_outlined),
    );
  }
}
