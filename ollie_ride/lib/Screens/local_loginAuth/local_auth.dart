import 'package:flutter/material.dart';
import 'package:ollie_ride/Screens/local_loginAuth/widgets/biometrics_auth.dart';
import 'package:ollie_ride/Screens/local_loginAuth/widgets/login_button.dart';
import 'package:ollie_ride/Screens/local_loginAuth/widgets/pin_field.dart';
import 'package:ollie_ride/Screens/local_loginAuth/widgets/user_info.dart';
import 'package:ollie_ride/appColors/colors.dart';

import 'package:ollie_ride/util/reusable.dart';
import 'package:ollie_ride/util/util.dart';

class LocalAuth extends StatefulWidget {
  const LocalAuth({Key? key}) : super(key: key);

  @override
  _LocalAuthState createState() => _LocalAuthState();
}

class _LocalAuthState extends State<LocalAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.bluePrimaryColor,
        backgroundColor: AppColors.whiteSecondaryColor,
        elevation: 0.0,
        title: OllieLogo(
          height: 50,
          width: 50,
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Logout',
            ),
          )
        ],
      ),
      floatingActionButton: Util().agentSupport(),
      backgroundColor: AppColors.whiteSecondaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: Util().widthScreen(context) / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserInfo(),
                PinField(),
                LoginButton(),
                BiometricsAuth(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
