import 'package:doctor_center/core/routing/app_routes.dart';
import 'package:doctor_center/core/routing/routes.dart';
import 'package:doctor_center/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocdocApp extends StatelessWidget {
  final AppRoutes appRoutes;
  const DocdocApp({super.key, required this.appRoutes});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: ColorsManager.mainWhite,
        ),
        initialRoute: Routes.onBourdingScreen,
        onGenerateRoute: appRoutes.generateRoute,
      ),
    );
  }
}
