import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ollie_ride/Screens/signUp/pin_verification.dart';
import 'package:ollie_ride/appColors/colors.dart';
import 'package:ollie_ride/util/navigation.dart';
import 'package:ollie_ride/util/reusable.dart';
import 'package:ollie_ride/util/util.dart';
import 'package:page_transition/page_transition.dart';

class SignUP extends StatefulWidget {
  const SignUP({Key? key}) : super(key: key);

  @override
  _SignUPState createState() => _SignUPState();
}

String greetingMessage() {
  var timeNow = DateTime.now().hour;
  if (timeNow <= 12) {
    return "Good Morning!";
  } else if ((timeNow > 12) && (timeNow <= 16)) {
    return "Good Afternoon!";
  } else if ((timeNow > 16) && (timeNow < 20)) {
    return "good Evening!";
  } else {
    return "Good Night!";
  }
}

String greetingMes = greetingMessage();

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: OllieLogo(width: 50, height: 50),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.clear),
            color: Colors.blue.shade800,
            iconSize: 30.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/smartphone.png",
                    height: 150,
                  ),
                ),
                Text(
                  "Hello, \n$greetingMes".toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text("Enter your phone number to get started",
                      style: TextStyle(
                        fontSize: 18,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "We will send a verification pin to your mobile number.",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: Util().widthScreen(context),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: '080333666999'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Container(
                    width: Util().widthScreen(context),
                    child: ElevatedButton(
                      onPressed: () {
                        print("Get Started");
                        Navigation().navigation(
                          context,
                          PinVerificationPage(),
                          PageTransitionType.rightToLeft,
                        );
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        )),
                      ),
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: AppColors.whiteSecondaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Util().agentSupport(),
    );
  }
}
