import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_styles.dart';
class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios_new)),
            5.horizontalSpace,
            Text(
              "Register",
              style: AppStyles.bold28,
            ),
          ],
        ),
        4.verticalSpace,
        Text(
          "Welcome ! please enter your details.",
          style: AppStyles.regular14.copyWith(
            color: Colors.black..withAlpha(120),
          ),
        ),
      ],
    );
  }
}
