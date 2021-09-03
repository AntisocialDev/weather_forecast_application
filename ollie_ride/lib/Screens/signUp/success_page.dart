import 'package:flutter/material.dart';
import 'package:ollie_ride/appColors/colors.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Image.asset("assets/images/Vector.png", height: 120,),
         Row(
           children: [
             Center(
               child: Padding(
                 padding: const EdgeInsets.only(left: 170, top: 40),
                 child: Text("Successful", textAlign: TextAlign.center,
                 style: TextStyle (
                   fontFamily: "Roboto-Regular.ttf",
                   fontSize: 15,
                   fontWeight: FontWeight.w400,)
                 )
               ),
             )
           ],
         )
         
       ],
     ),
        
      ),
    );
  }
}
