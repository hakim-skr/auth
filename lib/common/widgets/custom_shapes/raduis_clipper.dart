import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RaduisClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final radius = 20.0.r; // Adjust the radius based on your design

    path.moveTo(0, 0);
    path.lineTo(0, size.height - radius);
    path.arcToPoint(Offset(radius, size.height),
        radius: Radius.circular(radius), clockwise: false);
    path.lineTo(size.width - radius, size.height);
    path.arcToPoint(Offset(size.width, size.height - radius),
        radius: Radius.circular(radius), clockwise: false);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
