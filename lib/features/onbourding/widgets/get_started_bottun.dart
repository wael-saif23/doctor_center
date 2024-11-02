import 'package:doctor_center/core/helpers/extensions.dart';
import 'package:doctor_center/core/routing/routes.dart';
import 'package:doctor_center/core/theming/colors.dart';
import 'package:doctor_center/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        style: TextButton.styleFrom(
          minimumSize: Size(double.infinity.w, 52),
          backgroundColor: ColorsManager.mainBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          'Get Started',
          style: TextStyles.fontSize12semiBoldWhite,
        ));
  }
}
