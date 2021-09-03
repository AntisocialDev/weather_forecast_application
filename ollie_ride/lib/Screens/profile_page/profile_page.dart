import 'package:flutter/material.dart';
import 'package:ollie_ride/Screens/profile_page/widgets/user_info_fields.dart';
import 'package:ollie_ride/Screens/profile_page/widgets/profile_image_container.dart';
import 'package:ollie_ride/appColors/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.whiteSecondaryColor,
        ),
        title: Text('PROFILE'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileImageContainer(),
              UserInfoFields(),
            ],
          ),
        ),
      ),
    );
  }
}
