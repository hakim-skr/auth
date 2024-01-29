import 'package:auth_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MySpacing {
  MySpacing._();
  static EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
      top: MySizes.appBarHeight,
      left: MySizes.defaultSpace,
      bottom: MySizes.defaultSpace,
      right: MySizes.defaultSpace);
}
