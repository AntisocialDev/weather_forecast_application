import 'package:flutter/material.dart';
import 'package:ollie_ride/util/util.dart';
import 'package:pinput/pin_put/pin_put.dart';

class PinField extends StatefulWidget {
  const PinField({Key? key}) : super(key: key);

  @override
  _PinFieldState createState() => _PinFieldState();
}

class _PinFieldState extends State<PinField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 42.0),
      child: Container(
        child: Column(
          children: [
            Text('Enter your pin to login'),
            Padding(
              padding: const EdgeInsets.only(top: 42.0),
              child: PinPut(
                autofocus: true,
                fieldsCount: 4,
                pinAnimationType: PinAnimationType.scale,
                fieldsAlignment: MainAxisAlignment.spaceEvenly,
                keyboardType: TextInputType.number,
                selectedFieldDecoration: Util().pinPutDecoration(),
                followingFieldDecoration: Util().pinPutDecoration(),
                submittedFieldDecoration: Util().onSubmittedPinPutDecoration(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
