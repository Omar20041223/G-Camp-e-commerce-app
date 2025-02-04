import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_styles.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            GestureDetector(
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: Icon(Icons.arrow_back_ios_new)),
            5.horizontalSpace,
            Text(
              title,
              style: AppStyles.bold28,
            ),
          ],
        ),
        4.verticalSpace,
        Text(
          subTitle,
          style: AppStyles.regular14.copyWith(
            color: Colors.black..withValues(alpha: .47),
          ),
        ),
      ],
    );
  }
}
