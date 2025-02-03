import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxira_app/core/utils/app_styles.dart';
import 'package:luxira_app/core/widgets/custom_text_form_field.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({super.key, required this.headerText, required this.hintText, required this.textInputType, required this.iconData, this.obscureText=false});
  final String headerText;
  final String hintText;
  final TextInputType textInputType;
  final IconData iconData;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headerText,
          style: AppStyles.regular18.copyWith(color: Colors.black),
        ),
        8.verticalSpace,
        CustomTextFormField(hintText: hintText, textInputType: textInputType,iconData: iconData,obscureText: obscureText,)
      ],
    );
  }
}
