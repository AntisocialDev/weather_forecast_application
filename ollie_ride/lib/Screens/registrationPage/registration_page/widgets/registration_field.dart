import 'package:flutter/material.dart';
import 'package:ollie_ride/util/util.dart';

class RegistrationTextFields extends StatefulWidget {
  const RegistrationTextFields({Key? key, required this.formkey})
      : super(key: key);
  final GlobalKey<FormState> formkey;

  @override
  _RegistrationTextFieldsState createState() => _RegistrationTextFieldsState();
}

class _RegistrationTextFieldsState extends State<RegistrationTextFields> {
  late TextEditingController _firstnameController;
  late TextEditingController _lastnameController;
  late TextEditingController _emailAddressController;

  @override
  void initState() {
    super.initState();
    _firstnameController = TextEditingController();
    _lastnameController = TextEditingController();
    _emailAddressController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Register to create an account'),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Util().userInfoFormField(_firstnameController, 'First name',
                true, 'Enter your first name', firstnameValidator()),
          ),
          Util().userInfoFormField(_lastnameController, 'Last name', true,
              'Enter your last name', lastnameValidator()),
          Util().userInfoFormField(_emailAddressController, 'Email address',
              true, 'Enter your email address', emailValidator()),
        ],
      ),
    );
  }
}

//validator for first name,
String? Function(String? value)? firstnameValidator() {
  return (String? value) {
    if (value!.length < 3) {
      return 'First name cannot be less than 3 characters.';
    }
    return null;
  };
}

//validator for lastname
String? Function(String? value)? lastnameValidator() {
  return (String? value) {
    if (value!.length < 3) {
      return 'Last name cannot be less than 3 characters.';
    }
    return null;
  };
}

//validator for email
String? Function(String? value)? emailValidator() {
  const pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  final regExp = RegExp(pattern);
  return (String? value) {
    if (value!.isEmpty) {
      return 'Email cannot be empty';
    } else if (!regExp.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  };
}
