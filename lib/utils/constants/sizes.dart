import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MySizes {
  MySizes._();

  static const double defaultSize = 30.0;
  static const double splashContainerSize = 30.0;

  static final double screenHeight = Get.height.toDouble();
  static final double screenWidth = Get.width.toDouble();
  // screen :

// Padding and margin sizes
  static final double xs = 4.0.w;
  static final double sm = 8.0.w;
  static final double md = 16.0.w;
  static final double lg = 24.0.w;
  static final double xl = 32.0.w;

  // Icon sizes
  static final double iconXs = 12.0.w;
  static final double iconSm = 16.0.w;
  static final double iconMd = 24.0.w;
  static final double iconLg = 32.0.w;

  // Font sizes
  static final double fontSizeSm = 14.0.sp;
  static final double fontSizeMd = 16.0.sp;
  static final double fontSizeLg = 18.0.sp;

  // Button sizes
  static final double buttonHeight = 54.h;
  static final double buttonRadius = 12.0.r;
  static final double buttonWidth = 120.0.w;
  static final double buttonElevation = 4.0.w;

  // AppBar height
  static final double appBarHeight = 56.0.h;
  static final double NavigationBarHeight = 60.0.h;

  // Image sizes
  static final double imageThumbSize = 80.0.w;
  static final double imageLogoSize = 200.0.r;

  // Default spacing between sections
  static final double defaultSpace = 24.0.w;
  static final double spaceBtwItems = 16.0.w;
  static final double spaceBtwSections = 32.0.w;

  // Border radius
  static final double borderRadiusSm = 4.0.r;
  static final double borderRadiusMd = 8.0.r;
  static final double borderRadiusLg = 12.0.r;

  // Divider height
  static final double dividerHeight = 1.0.h;

  // Input field
  static final double inputFieldRadius = 12.0.r;
  static final double spaceBtwInputFields = 16.0.h;

  // Card sizes
  static final double cardRadiusLg = 16.0.r;
  static final double cardRadiusHd = 12.0.r;
  static final double cardRadiusSm = 18.8.r;
  static final double cardRadiusXs = 6.0.r;
  static final double cardElevation = 2.0.h;

  // Image carousel height
  static final double imageCarouselHeight = 200.0.h;

  // Loading indicator size
  static final double loadingIndicatorSize = 36.0.w;

  // Grid view spacing
  static final double gridViewSpacing = 16.0.w;

// // Product item dimensions
//   static final const double productImageSize = 120.0;
//   static final const double productImageRadius = 16.0;
//   static final const double productItemHeight = 160.0;
}
