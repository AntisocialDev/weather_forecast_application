import 'package:flutter/material.dart';
import 'package:ollie_ride/Screens/registrationPage/add_photo/widgets/buttom_buttons.dart';
import 'package:ollie_ride/Screens/registrationPage/add_photo/widgets/image_container.dart';

import 'package:ollie_ride/appColors/colors.dart';
import 'package:ollie_ride/util/app_theme.dart';
import 'package:ollie_ride/util/reusable.dart';
import 'package:ollie_ride/util/util.dart';

class AddPhoto extends StatefulWidget {
  const AddPhoto({Key? key}) : super(key: key);

  @override
  _AddPhotoState createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Util().agentSupport(),
      appBar: AppBar(
        backgroundColor: AppColors.whiteSecondaryColor,
        elevation: 0.0,
        title: OllieLogo(
          height: 50,
          width: 50,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        children: [
          Container(
            child: Column(
              children: [
                Text(
                  'Add A Photo',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    child: Text(
                      'To help your passengers identify you',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                ImageContainer(),
                BottomButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
