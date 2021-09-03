import 'package:flutter/material.dart';
import 'package:ollie_ride/Authentication/Local-Auth/local_auth.dart';

import 'package:ollie_ride/appColors/colors.dart';

class BiometricsAuth extends StatelessWidget {
  const BiometricsAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        child: Column(
          children: [
            Text(
              'Forgot PIN?',
              style: TextStyle(
                color: AppColors.bluePrimaryColor,
              ),
            ),
            IconButton(
              iconSize: 35,
              onPressed: () {
                OllieLocalAuth().biometricAuth(context);
              },
              icon: Icon(
                Icons.fingerprint,
                color: AppColors.bluePrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
