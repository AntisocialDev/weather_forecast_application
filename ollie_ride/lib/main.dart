import 'package:flutter/material.dart';
import 'package:ollie_ride/Screens/registrationPage/registration_page/registration_page.dart';
import 'package:ollie_ride/Screens/setupPinPage/pin_setup_page/pin_setup.dart';
import 'package:ollie_ride/Screens/setupPinPage/pin_setup_page/widgets/setup_pin_field.dart';
import 'package:ollie_ride/Screens/signUp/sign_up.dart';
import 'package:ollie_ride/Screens/splash_screen/welcome_screen.dart';
import 'package:ollie_ride/appColors/colors.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:ollie_ride/provider/pin_provider.dart';

import 'package:ollie_ride/util/app_theme.dart';
import 'package:ollie_ride/util/upload_image_func.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<PinProvider>(create: (_) => PinProvider()),
      ChangeNotifierProvider<UploadImage>(create: (_) => UploadImage()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().apptheme,
      debugShowCheckedModeBanner: false,
      title: 'Ollie Ride',
      home: OllieSplash(),
    );
  }
}

class OllieSplash extends StatelessWidget {
  const OllieSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: WelcomeScreen(),
      duration: 3000,
      imageSize: 150,
      imageSrc: 'assets/images/ollie_logo.png',
      backgroundColor: AppColors.whiteSecondaryColor,
    );
  }
}
