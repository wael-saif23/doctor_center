import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SizedBox getVerticalSpacing(double value) {
  return SizedBox(height: value.h);
}

SizedBox getHorizontalSpacing(double value) {
  return SizedBox(width: value.w);
}