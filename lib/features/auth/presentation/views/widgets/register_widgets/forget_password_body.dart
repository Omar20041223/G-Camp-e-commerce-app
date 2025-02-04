import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxira_app/core/widgets/custom_button.dart';
import 'package:luxira_app/features/auth/presentation/views/widgets/auth_header.dart';
import 'package:luxira_app/features/auth/presentation/views/widgets/auth_text_field.dart';
class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: Column(
        children: [
          24.verticalSpace,
          AuthHeader(title: "Forgot password", subTitle: "No worries, we'll send you reset instructions"),
          56.verticalSpace,
          Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.r),
              border: Border.all(color: Colors.black.withValues(alpha: .4),width: 2.29.sp)
            ),
            child: Icon(Icons.fingerprint,size: 30.sp,),
          ),
          32.verticalSpace,
          AuthTextField(headerText: "Email", hintText: "Enter your email", textInputType: TextInputType.emailAddress, iconData: Icons.email),
          24.verticalSpace,
          CustomButton(text: "Reset Password",onPressed: (){},)
        ],
      ),
    );
  }
}
