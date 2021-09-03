import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

class UploadImage with ChangeNotifier {
  ImagePicker _imagePicker = ImagePicker();

  File _image = File('');

  File get image => _image;

  deleteImage() async {
    _image = File('');
    notifyListeners();
  }

  Future uploadImage() async {
    try {
      final galleryFile = (await _imagePicker.pickImage(
        source: ImageSource.gallery,
      ));

      if (galleryFile != null) {
        _image = File(galleryFile.path);

        notifyListeners();
        print(_image);
      }
    } catch (error) {
      print(error);
    }
  }

  Future getLostData() async {
    final LostDataResponse response = await _imagePicker.retrieveLostData();
    if (response.isEmpty) {
      print('I Dunno');
    } else if (response.file != null) {
      if (response.type == RetrieveType.image) {
        print('Halo Baby: ${response.file?.path}');
      }
    }
  }
}
