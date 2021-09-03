import 'package:flutter/material.dart';
import 'package:ollie_ride/Screens/registrationPage/registration_page/widgets/phone_image.dart';
import 'package:ollie_ride/Screens/registrationPage/registration_page/widgets/register_button_section.dart';
import 'package:ollie_ride/Screens/registrationPage/registration_page/widgets/registration_field.dart';
import 'package:ollie_ride/appColors/colors.dart';
import 'package:ollie_ride/util/reusable.dart';
import 'package:ollie_ride/util/util.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  late GlobalKey<FormState> _formkey;
  @override
  void initState() {
    super.initState();
    _formkey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Util().agentSupport(),
      appBar: AppBar(
        title: OllieLogo(
          height: 50,
          width: 50,
        ),
        backgroundColor: AppColors.whiteSecondaryColor,
        elevation: 0.0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        children: [
          Container(
            alignment: Alignment.center,
            width: Util().widthScreen(context) / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PhoneImage(),
                RegistrationTextFields(
                  formkey: _formkey,
                ),
                RegisterButtonSection(
                  formkey: _formkey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
