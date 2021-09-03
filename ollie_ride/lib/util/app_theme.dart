import 'package:flutter/material.dart';
import 'package:ollie_ride/appColors/colors.dart';

class AppTheme {
  ThemeData _appTheme() {
    return ThemeData(
      appBarTheme: _appBarTheme(),
      scaffoldBackgroundColor: AppColors.whiteSecondaryColor,
      fontFamily: 'Roboto',
      primaryColor: AppColors.bluePrimaryColor,
      textTheme: TextTheme(
        bodyText2: TextStyle(
          color: AppColors.textBlackOnSecondaryColor,
        ),
      ),
    );
  }

  ThemeData get apptheme => _appTheme();

  AppBarTheme _appBarTheme() {
    return AppBarTheme(
      iconTheme: IconThemeData(
        color: AppColors.textBlackOnSecondaryColor,
      ),
    );
  }
}
