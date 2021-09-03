import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ollie_ride/Screens/registrationPage/registration_page/registration_page.dart';
import 'package:ollie_ride/appColors/colors.dart';
import 'package:ollie_ride/util/navigation.dart';
import 'package:ollie_ride/util/reusable.dart';
import 'package:ollie_ride/util/util.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pinput/pin_put/pin_put.dart';

class PinVerificationPage extends StatefulWidget {
  @override
  _PinVerificationPageState createState() => _PinVerificationPageState();
}

class _PinVerificationPageState extends State<PinVerificationPage> {
  BoxDecoration _pinPutDecoration() {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Color(0xffC4C4C4),
          width: 3.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: OllieLogo(
          height: 50,
          width: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.clear),
            color: Colors.blue.shade800,
            iconSize: 30.0,
          ),
        ],
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Please enter the verification PIN sent to your device",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 42),
                child: PinPut(
                  onSubmit: (value) {
                    Navigation().navigation(
                      context,
                      RegistrationPage(),
                      PageTransitionType.rightToLeft,
                    );
                  },
                  fieldsCount: 4,
                  pinAnimationType: PinAnimationType.scale,
                  fieldsAlignment: MainAxisAlignment.spaceEvenly,
                  keyboardType: TextInputType.number,
                  selectedFieldDecoration: _pinPutDecoration(),
                  followingFieldDecoration: _pinPutDecoration(),
                  submittedFieldDecoration: _pinPutDecoration().copyWith(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 3.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Text(
                  "RESEND PIN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.bluePrimaryColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Util().agentSupport(),
    );
  }
}
