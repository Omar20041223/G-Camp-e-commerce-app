import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxira_app/core/utils/app_colors.dart';
import 'package:luxira_app/core/widgets/custom_text_form_field.dart';

import '../../../../../core/utils/app_images.dart';
class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(Assets.assetsImagesAppLogoPng,width: 84.w,height: 38.5.h,),
              Row(
                children: [
                  Icon(Icons.notifications),
                  10.horizontalSpace,
                  Icon(Icons.shopping_cart),
                ],
              )
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomTextFormField(hintText: "Search here", textInputType: TextInputType.text,iconData: Icons.search,borderSide: BorderSide(color: Colors.red))),
              17.horizontalSpace,
              Container(
                height: 45.h,
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
      ),
    );
  }
}
