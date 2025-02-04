import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxira_app/features/home/presentation/views/widgets/home_view_common_item.dart';

import '../../../../../core/utils/app_styles.dart';
class HomeViewCommonListView extends StatelessWidget {
  const HomeViewCommonListView({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: AppStyles.w50020,
              ),
              Spacer(),
              Text("See All",style: AppStyles.regular16.copyWith(color: Color(0xff0088C9)),),
              24.horizontalSpace
            ],
          ),
          24.verticalSpace,
          SizedBox(
            height: 235.h,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return HomeViewCommonItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
