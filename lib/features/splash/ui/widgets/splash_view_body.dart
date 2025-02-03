import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:luxira_app/core/utils/app_images.dart';
import 'package:luxira_app/core/utils/app_router.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(Assets.assetsImagesSplashTopRight)
              .animate()
              .fade(duration: 800.ms)
              .slideX(
                  begin: 1.0,
                  end: 0.0,
                  duration: 800.ms,
                  curve: Curves.easeOut),
        ),
        Image.asset(Assets.assetsImagesAppLogoPng)
            .animate()
            .fade(duration: 1000.ms)
            .scale(duration: 1000.ms, curve: Curves.easeOutBack),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.assetsImagesSplashDownLeft)
                .animate()
                .fade(duration: 800.ms)
                .slideY(
                    begin: 1.0,
                    end: 0.0,
                    duration: 800.ms,
                    curve: Curves.easeOut),
            SvgPicture.asset(Assets.assetsImagesSplashDownRight)
                .animate()
                .fade(duration: 800.ms)
                .slideY(
                    begin: 1.0,
                    end: 0.0,
                    duration: 800.ms,
                    curve: Curves.easeOut),
          ],
        ),
      ],
    ).animate().fade(duration: 500.ms).then(duration: 2.seconds).callback(
      callback: (value) {
        GoRouter.of(context).pushReplacement(AppRouter.kOnboardingView);
      },
    );
  }
}
