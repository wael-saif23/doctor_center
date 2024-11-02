import 'package:doctor_center/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle fontSize32Bold = TextStyle(
      color: ColorsManager.mainBlue,
      fontSize: 32.sp,
      fontWeight: FontWeight.bold);

  static TextStyle fontSize12RegularGray = TextStyle(
      color: ColorsManager.mainGrey,
      fontSize: 12.sp,
      fontWeight: FontWeight.w400);

  static TextStyle fontSize12semiBoldWhite = TextStyle(
      color: ColorsManager.mainWhite,
      fontSize: 16.sp,
      fontWeight: FontWeight.w600);
}
