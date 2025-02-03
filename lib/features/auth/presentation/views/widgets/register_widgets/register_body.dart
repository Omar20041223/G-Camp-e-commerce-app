import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:luxira_app/core/utils/app_styles.dart';
import 'package:luxira_app/core/widgets/custom_button.dart';
import 'package:luxira_app/features/auth/presentation/views/widgets/auth_footer.dart';
import 'package:luxira_app/features/auth/presentation/views/widgets/register_widgets/register_header.dart';
import 'package:luxira_app/features/auth/presentation/views/widgets/register_widgets/register_text_fields.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            24.verticalSpace,
            const RegisterHeader(),
            24.verticalSpace,
            RegisterTextFields(),
            32.verticalSpace,
            CustomButton(
              text: "Sign up",
              height: 55.h,
              borderRadius: BorderRadius.circular(8.r),
              textStyle: AppStyles.regular18.copyWith(color: Colors.white),
            ),
            24.verticalSpace,
            AuthFooter(),
            16.verticalSpace,
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Already have an account? ",
                    style: AppStyles.regular14,
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = () {
                      // GoRouter.of(context).push('/login');
                    },
                    text: "Log in",
                    style: AppStyles.regular16.copyWith(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
