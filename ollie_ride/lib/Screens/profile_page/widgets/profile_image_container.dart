import 'package:flutter/material.dart';
import 'package:ollie_ride/appColors/colors.dart';
import 'package:ollie_ride/util/upload_image_func.dart';
import 'package:provider/provider.dart';

class ProfileImageContainer extends StatefulWidget {
  const ProfileImageContainer({Key? key}) : super(key: key);

  @override
  _ProfileImageContainerState createState() => _ProfileImageContainerState();
}

class _ProfileImageContainerState extends State<ProfileImageContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(0.0, 3.0), // shadow direction: bottom right
          )
        ],
        color: Color(0xffe5e5e5),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UserImage(),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'Jane Doe',
                style: TextStyle(
                  color: AppColors.bluePrimaryColor,
                  fontSize: 18.0,
                ),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all(AppColors.bluePrimaryColor),
              ),
              onPressed: () {},
              child: Text(
                'Edit Profile',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserImage extends StatefulWidget {
  const UserImage({Key? key}) : super(key: key);

  @override
  _UserImageState createState() => _UserImageState();
}

class _UserImageState extends State<UserImage> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: AppColors.redErrorColor,
      child: Align(
        alignment: Alignment.bottomRight,
        child: CircleAvatar(
          radius: 12.0,
          child: GestureDetector(
            onTap: () {
              UploadImage().uploadImage();
            },
            child: Icon(
              Icons.camera_alt,
              size: 14,
            ),
          ),
        ),
      ),
    );
  }
}
