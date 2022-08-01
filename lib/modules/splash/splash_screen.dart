import 'package:flutter/material.dart';
import 'package:iboon_application/shared/shared.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xff60A053),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      
        Image.asset('assets/images/logo.png')
        ],
      ),
    );
  }
}
