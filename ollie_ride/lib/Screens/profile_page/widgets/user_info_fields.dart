import 'package:flutter/material.dart';
import 'package:ollie_ride/util/util.dart';

class UserInfoFields extends StatefulWidget {
  const UserInfoFields({Key? key}) : super(key: key);

  @override
  _UserInfoFieldsState createState() => _UserInfoFieldsState();
}

class _UserInfoFieldsState extends State<UserInfoFields> {
  late TextEditingController _nameController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _emailAddressController;
  late TextEditingController _dobController;
  late TextEditingController _genderController;
  late TextEditingController _addressController;
  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _phoneNumberController = TextEditingController();
    _emailAddressController = TextEditingController();
    _dobController = TextEditingController();
    _genderController = TextEditingController();
    _addressController = TextEditingController();

    //text controller values
    _nameController.text = 'Jane Doe';
    _phoneNumberController.text = '08134560464';
    _emailAddressController.text = 'victorolaolubanjo@yahoo.com';
    _dobController.text = '22 June, 2000';
    _genderController.text = 'Male';
    _addressController.text = 'Ijebu, Ogun State';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 58.0),
      child: Container(
        width: Util().widthScreen(context) / 1.15,
        child: Column(
          children: [
            //Name Field,
            Util().userInfoFormField(
              _nameController,
              'Name',
              false,
            ),
            Util().userInfoFormField(
                _phoneNumberController, 'Phone Number', false),
            Util().userInfoFormField(
                _emailAddressController, 'Email Address', false),
            Util().userInfoFormField(_dobController, 'Date of Birth', false),
            Util().userInfoFormField(_genderController, 'Gender', false),
            Util().userInfoFormField(_addressController, 'Address', false)
          ],
        ),
      ),
    );
  }
}
