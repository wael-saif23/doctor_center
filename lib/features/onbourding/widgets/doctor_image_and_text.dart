import 'package:doctor_center/core/theming/colors.dart';
import 'package:doctor_center/core/theming/styles.dart';
import 'package:doctor_center/core/working/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          Assets.svgsSimpleLogoLawOpacity,
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  ColorsManager.mainWhite,
                  ColorsManager.mainWhite.withOpacity(0.0),
                ],
                stops: const [
                  0.14,
                  0.4,
                ]),
          ),
          child: Image.asset(Assets.imagesOnbourdingDoctor),
        ),
        Positioned(
          bottom: 18.h,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            style: TextStyles.fontSize32BlueBold,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
