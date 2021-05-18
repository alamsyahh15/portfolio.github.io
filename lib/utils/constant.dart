import 'package:flutter/material.dart';

String baseUrl = "";

double widthScreen(context) => MediaQuery.of(context).size.width;
double heightScreen(context) => MediaQuery.of(context).size.height;

/// Sized Font
double titleSize(double layoutSize) {
  if (layoutSize > 1200) {
    return 64;
  } else if (layoutSize > 800 && layoutSize < 1200) {
    return 50;
  } else {
    return 32;
  }
}

double subTitleSize(double layoutSize) {
  if (layoutSize > 1200) {
    return 32;
  } else if (layoutSize > 800 && layoutSize < 1200) {
    return 24;
  } else {
    return 16;
  }
}

double normalTextSize(double layoutSize) {
  return 16;
}
