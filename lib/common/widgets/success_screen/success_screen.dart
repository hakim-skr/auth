import 'package:auth_app/common/styles/spacing_style.dart';
import 'package:auth_app/utils/constants/images.dart';
import 'package:auth_app/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.subTitle,
    required this.title,
    this.imgUrl,
    required this.onPressed,
    this.btnText = "Continue",
  });

  final String subTitle;
  final String title;
  final String btnText;
  final String? imgUrl;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1.sh,
          alignment: Alignment.center,
          child: Padding(
            padding: MySpacing.paddingWithAppBarHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                imgUrl != null
                    ? SvgPicture.asset(
                        imgUrl!,
                        width: 0.4.sw,
                      )
                    : Image.asset(
                        MyImages.successIcone,
                        width: 0.6.sw,
                      ),
                SizedBox(height: MySizes.spaceBtwSections),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: MySizes.spaceBtwItems),
                Text(
                  textAlign: TextAlign.center,
                  subTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                SizedBox(height: MySizes.spaceBtwSections),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        child: Text(btnText), onPressed: () => onPressed())),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
