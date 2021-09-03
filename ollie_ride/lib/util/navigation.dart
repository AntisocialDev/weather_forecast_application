import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Navigation {
  Future navigation(
      BuildContext context, Widget route, PageTransitionType type) {
    return Navigator.push(
        context,
        PageTransition(
          child: route,
          type: type,
        ));
  }
}
