import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxira_app/core/utils/app_colors.dart';
import 'package:luxira_app/core/widgets/custom_text_form_field.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(Assets.assetsImagesAppLogoPng),
            Spacer(),
            Icon(Icons.notifications),
            10.horizontalSpace,
            Icon(Icons.shopping_cart),
          ],
        ),
        Row(
          children: [
            CustomTextFormField(hintText: "Search here", textInputType: TextInputType.text,iconData: Icons.search,borderSide: BorderSide(color: Color(0xff0F4D68)),),
            17.horizontalSpace,
            Container(
              height: 55.h,
              width: 55.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.r),
                border: Border.all(color: Color(0xff0F4D68)),
              ),
              child: Icon(
                Icons.settings_input_composite_rounded,
                color: AppColors.primaryColor,
              ),
            )
          ],
        )
      ],
    );
  }
}
