import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxira_app/features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:luxira_app/features/home/presentation/views/widgets/home_view_carousel_slider.dart';
import 'package:luxira_app/features/home/presentation/views/widgets/home_view_categories.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        24.verticalSpace,
        HomeViewAppBar(),
        23.5.verticalSpace,
        HomeViewCarouselSlider(),
        32.verticalSpace,
        HomeViewCategories(),
      ],
    );
  }
}
