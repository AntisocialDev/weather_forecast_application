import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';
import 'package:ollie_ride/appColors/colors.dart';
import 'package:ollie_ride/util/util.dart';
import 'package:local_auth/error_codes.dart' as auth_error;

class OllieLocalAuth {
  final LocalAuthentication _auth = LocalAuthentication();

  //checks if biometrics can be checked by the app
  bool canCheckBiometrics = false;
  //checks if biometrics is supported on the device
  bool biometricSupported = false;

  bool authenticated = false;

  //Function that handles the biometric check and implementation
  Future biometricAuth(BuildContext context) async {
    try {
      canCheckBiometrics = await _auth.canCheckBiometrics;
      biometricSupported = await _auth.isDeviceSupported();

      //checks if Biometrics is supported
      if (canCheckBiometrics && biometricSupported) {
        //Biometrics supported
        print(
            'Biometric is supported: $biometricSupported, $canCheckBiometrics');
        //authenticate
        localAuth(context).then((value) {
          print('Authenticated : $authenticated');
        });
      } else {
        //Biometrics not supported
        print('Biometrics supported $biometricSupported');
        Util().showSnackBar(context, 'Biometrics not supported on this device',
            AppColors.redErrorColor);
      }
    } catch (error) {
      print(error);
    }
  }

//authenticate the biometrics
  Future localAuth(BuildContext context) async {
    try {
      authenticated = await _auth.authenticate(
          biometricOnly: true,
          useErrorDialogs: true,
          stickyAuth: true,
          androidAuthStrings:
              AndroidAuthMessages(signInTitle: 'Login to Homepage'),
          localizedReason: 'Touch finger sensor to login');
    } on PlatformException catch (error) {
      print(error.message);
      biometricErrors(error, context);
    }
  }
}

void biometricErrors(PlatformException error, BuildContext context) {
  if (error.code == auth_error.lockedOut) {
    Util().showSnackBar(
        context,
        'Error: Too many Biometric attempts. Try again in 30 seconds',
        AppColors.redErrorColor);
  } else if (error.code == auth_error.notEnrolled) {
    Util().showSnackBar(
        context,
        'Error: Fingerprints not registered on this device',
        AppColors.redErrorColor);
  } else if (error.code == auth_error.permanentlyLockedOut) {
    Util().showSnackBar(
        context,
        'Error: Too many attempts. Permanently locked out',
        AppColors.redErrorColor);
  } else if (error.code == auth_error.notAvailable) {
    Util().showSnackBar(
        context,
        'Error: Touch/Fingerprint not available on this device',
        AppColors.redErrorColor);
  } else {
    Util().showSnackBar(
        context, error.message.toString(), AppColors.redErrorColor);
  }
}
