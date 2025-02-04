import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxira_app/features/home/presentation/views/widgets/home_app_bar.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: Column(
        children: [
          24.verticalSpace,
          HomeAppBar(),
        ],
      ),
    );
  }
}
