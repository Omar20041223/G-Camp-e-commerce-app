import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:luxira_app/core/utils/app_images.dart';
import 'package:luxira_app/core/utils/app_router.dart';
import 'package:luxira_app/core/utils/app_styles.dart';
import 'package:luxira_app/core/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends HookWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();
    final currentIndex = useState(0); // Track the current page index
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                currentIndex.value = index; // Update the index
              },
              children: [
                PageViewItem(
                  image: Assets.assetsImagesOnborading1,
                  title: 'Welcome to the world of easy shopping',
                  description:
                      'You can explore thousands of products easily and quickly; we are here to make your shopping experience enjoyable and smooth.',
                ),
                PageViewItem(
                  image: Assets.assetsImagesOnborading2,
                  title: 'Exclusive offers tailored for you',
                  description:
                      'Get exclusive deals and discounts that suit your taste. Enjoy a personalized shopping experience that meets all your needs.',
                ),
                PageViewItem(
                  image: Assets.assetsImagesOnborading3,
                  title: 'Secure and fast payment with a single touch',
                  description:
                      'Enjoy a smooth and secure payment experience with various payment options. Shop with confidence and pay effortlessly.',
                ),
              ],
            ),
          ),
          40.verticalSpace,
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            axisDirection: Axis.horizontal,
            effect: WormEffect(
                spacing: 8.0,
                radius: 4.0,
                dotWidth: 24.0,
                dotHeight: 16.0,
                paintStyle: PaintingStyle.stroke,
                strokeWidth: 1.5,
                dotColor: Colors.grey,
                activeDotColor: Colors.indigo),
          ),
          56.verticalSpace,
          currentIndex.value != 2
              ? SizedBox(height: 250.h,)
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 43.w),
                  child: Column(
                    children: [
                      CustomButton(
                        text: "REGISTER",
                        height: 48.h,
                        width: 342.w,
                        shadow: true,
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.kRegisterView);
                        },
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      24.verticalSpace,
                      CustomButton(
                        text: "LOGIN",
                        backgroundColor: Colors.white,
                        height: 48.h,
                        width: 342.w,
                        shadow: true,
                        onPressed: () {},
                        textStyle: TextStyle(
                            color: Color(0xff115573),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      131.verticalSpace,
                    ],
                  ),
                )
        ],
      ),
    );
  }
}

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        SizedBox(height: 25),
        Text(
          title,
          style: AppStyles.bold20,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 24),
        Text(description,
            style: AppStyles.regular16, textAlign: TextAlign.center),
      ],
    );
  }
}

class PageViewItemModel {
  final String title;
  final String description;
  final String image;

  PageViewItemModel(
      {required this.title, required this.description, required this.image});
}
