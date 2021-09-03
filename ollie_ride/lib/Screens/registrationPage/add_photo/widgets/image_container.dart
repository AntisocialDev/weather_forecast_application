import 'package:flutter/material.dart';
import 'package:ollie_ride/appColors/colors.dart';
import 'package:ollie_ride/util/upload_image_func.dart';
import 'package:provider/provider.dart';

class ImageContainer extends StatefulWidget {
  const ImageContainer({Key? key}) : super(key: key);

  @override
  _ImageContainerState createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: FileImage(Provider.of<UploadImage>(context).image)),
              color: AppColors.whiteSecondaryColor,
              border: Border.all(color: Color(0xff39D1F2), width: 3.0),
              shape: BoxShape.circle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
            child: GestureDetector(
              onTap: () {
                Provider.of<UploadImage>(context, listen: false).uploadImage();
              },
              child: Text(
                'Select photo',
                style: TextStyle(
                  color: Color(0xff758580),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Provider.of<UploadImage>(context, listen: false).deleteImage();
            },
            child: Text(
              'Delete photo',
              style: TextStyle(
                color: Color(0xff758580),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
