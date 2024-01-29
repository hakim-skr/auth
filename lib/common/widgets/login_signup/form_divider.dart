import 'package:auth_app/utils/constants/colors.dart';
import 'package:auth_app/utils/constants/sizes.dart';
import 'package:auth_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FormDivider extends StatelessWidget {
  final String text;
  const FormDivider({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: MyHelper.isDarkMode(context)
                ? MyColors.darkGrey
                : MyColors.grey,
            height: MySizes.dividerHeight,
            thickness: 1,
            indent: 60.w,
            endIndent: 5.w,
          ),
        ),
        Text(
          text.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: MyHelper.isDarkMode(context)
                ? MyColors.darkGrey
                : MyColors.grey,
            height: MySizes.dividerHeight,
            thickness: 1,
            indent: 5.w,
            endIndent: 60.w,
          ),
        )
      ],
    );
  }
}
