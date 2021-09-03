import 'package:flutter/material.dart';
import 'package:ollie_ride/appColors/colors.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: 170),
          child: Text(
            'Welcome Olaoluwa',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: AppColors.textBlackOnSecondaryColor,
              fontSize: 24,
              fontFamily: 'Montserrat',
            ),
          ),
        ),
        Container(
          height: 73.0,
          width: 73.0,
          child: CircleAvatar(
            foregroundImage: NetworkImage(
                'https://th.bing.com/th/id/R.83b03e964fbffaa23c32739d1d01437c?rik=pR85rRl9FH1csQ&pid=ImgRaw&r=0'),
          ),
        ),
      ],
    );
  }
}
