import 'package:flutter/material.dart';

void navigateToNextScreen(BuildContext context, Widget screen) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
}

void navigateToReplaceScreen(BuildContext context, Widget screen) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => screen));
}
