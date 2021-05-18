import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/constant.dart';

class ContactDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: widthScreen(context) / 8 + 32,
        bottom: widthScreen(context) / 8,
      ),
      padding: EdgeInsets.symmetric(horizontal: widthScreen(context) / 8),
      child: Center(child: Text("Test Contact")),
    );
  }
}
