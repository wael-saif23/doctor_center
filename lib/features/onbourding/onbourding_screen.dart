import 'package:doctor_center/core/theming/styles.dart';
import 'package:doctor_center/features/onbourding/widgets/app_logo.dart';
import 'package:doctor_center/features/onbourding/widgets/doctor_image_and_text.dart';
import 'package:doctor_center/features/onbourding/widgets/get_started_bottun.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnbourdingScreen extends StatelessWidget {
  const OnbourdingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const AppLogo(),
            const SizedBox(height: 40.96),
            const DoctorImageAndText(),
            const SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.65.w),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    style: TextStyles.fontSize12RegularGray,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 32.h),
                  const GetStartedButton(),
                  
                  SizedBox(height: 32.h),
                ],
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
