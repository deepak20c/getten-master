import 'package:flutter/material.dart';

class AppDimensions {
  AppDimensions(this.context);

  late BuildContext context;

  double get getScreenWidth => MediaQuery.of(context).size.width;
  double get getScreenHeight => MediaQuery.of(context).size.height;
}
