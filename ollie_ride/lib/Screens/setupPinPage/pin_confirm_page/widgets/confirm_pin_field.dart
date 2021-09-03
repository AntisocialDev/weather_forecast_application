import 'package:flutter/material.dart';
import 'package:ollie_ride/appColors/colors.dart';
import 'package:ollie_ride/provider/pin_provider.dart';
import 'package:ollie_ride/util/util.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:provider/provider.dart';

class ConfirmPinField extends StatefulWidget {
  const ConfirmPinField({Key? key}) : super(key: key);

  @override
  _ConfirmPinFieldState createState() => _ConfirmPinFieldState();
}

class _ConfirmPinFieldState extends State<ConfirmPinField> {
  bool _showPin = false;
  late TextEditingController _confirmPinController;
  @override
  void initState() {
    super.initState();
    _confirmPinController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Confirm your 4-digit PIN'),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: PinPut(
              // onSubmit: (val) {
              //   //Todo: Implement when all field are filled and proceed.
              //   val = _confirmPinController.text;
              //   Provider.of<PinProvider>(context, listen: false).confirmPin =
              //       val;
              // },
              onChanged: (val) {
                val = _confirmPinController.text;
                Provider.of<PinProvider>(context, listen: false).confirmPin =
                    val;
              },
              controller: _confirmPinController,
              obscureText: _showPin ? null : '●',
              fieldsCount: 4,
              autofocus: true,
              pinAnimationType: PinAnimationType.scale,
              fieldsAlignment: MainAxisAlignment.spaceEvenly,
              keyboardType: TextInputType.number,
              selectedFieldDecoration: Util().pinPutDecoration(),
              followingFieldDecoration: Util().pinPutDecoration(),
              submittedFieldDecoration: Util().onSubmittedPinPutDecoration(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                if (_showPin) {
                  setState(() {
                    _showPin = false;
                  });
                } else {
                  setState(() {
                    _showPin = true;
                  });
                }
              },
              child: Text(
                _showPin ? 'Hide PIN' : 'Show PIN',
                style: TextStyle(
                  color: AppColors.redErrorColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
