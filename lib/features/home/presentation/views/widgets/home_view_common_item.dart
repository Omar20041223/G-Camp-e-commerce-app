import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxira_app/core/utils/app_styles.dart';
import 'package:luxira_app/core/widgets/custom_button.dart';

class HomeViewCommonItem extends StatelessWidget {
  const HomeViewCommonItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.46),
      margin: EdgeInsets.only(right: 16.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9.r),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 3.37), blurRadius: 8.08, color: Colors.black.withValues(alpha: 200))
          ]),
      child: Column(
        children: [
          Container(
              width: 154.8.w,
              height: 123.84.h,
              decoration: BoxDecoration(
                  color: Color(0xff480D0D),
                  borderRadius: BorderRadius.circular(4.5.r),
                  image: DecorationImage(
                      image: AssetImage("assets/images/offers_image.png"),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: EdgeInsets.only(top: 11.0.h,right: 10.5.w),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 22.r,
                    height: 22.r,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Icon(Icons.favorite_outline_rounded,size: 15.sp,),
                  ),
                ),
              )),
          2.verticalSpace,
          Text.rich(
            TextSpan(
              text: "Product     ",
              style: AppStyles.w50016,
              children: [
                TextSpan(
                  text: "\$500",
                  style: TextStyle(
                    color: Color(0xffDB4444),
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp
                  )
                )
              ]
            ),
          ),
          CustomButton(text: "Add To Cart",textStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 12.sp
          ),),

        ],
      ),
    );
  }
}
