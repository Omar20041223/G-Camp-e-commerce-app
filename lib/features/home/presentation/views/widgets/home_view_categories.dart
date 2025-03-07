import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxira_app/core/utils/app_styles.dart';
import 'package:luxira_app/features/home/presentation/views/widgets/home_view_categories_item.dart';

class HomeViewCategories extends StatelessWidget {
  const HomeViewCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categories",
            style: AppStyles.w50020,
          ),
          24.verticalSpace,
          SizedBox(
            height: 117.5,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return HomeViewCategoriesItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
