import 'package:doctor_center/core/helpers/spacing.dart';
import 'package:doctor_center/core/theming/styles.dart';
import 'package:doctor_center/core/widgets/app_text_button.dart';
import 'package:doctor_center/core/widgets/app_text_form_field.dart';
import 'package:doctor_center/features/login/ui/widgets/already_have_account_text.dart';
import 'package:doctor_center/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('LoginScreen'),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back',
                    style: TextStyles.font24BlueBold,
                  ),
                  getVerticalSpacing(8),
                  Text(
                    'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                    style: TextStyles.font14GrayRegular,
                  ),
                  getVerticalSpacing(36),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const AppTextFormField(hintText: 'Email'),
                        getVerticalSpacing(18),
                        AppTextFormField(
                          hintText: 'Password',
                          isObscureText: isObscureText,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: Icon(
                              isObscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                        ),
                        getVerticalSpacing(24),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyles.font13BlueRegular,
                          ),
                        ),
                        getVerticalSpacing(40),
                        AppTextButton(
                          buttonText: "Login",
                          textStyle: TextStyles.font16WhiteSemiBold,
                          onPressed: () {},
                        ),
                        getVerticalSpacing(16),
                        const TermsAndConditionsText(),
                        getVerticalSpacing(60),
                        const AlreadyHaveAccountText(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
