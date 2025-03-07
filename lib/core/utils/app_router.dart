import 'package:go_router/go_router.dart';
import 'package:luxira_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:luxira_app/features/auth/presentation/views/register_view.dart';
import 'package:luxira_app/features/home/presentation/views/home_view.dart';
import '../../features/onboarding/ui/views/onborading_view.dart';

abstract class AppRouter {
  static const kSplashScreen = '/splashScreen';
  static const kOnboardingView = '/onboardingView';
  static const kRegisterView = '/registerView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const ForgetPasswordView()),
      GoRoute(
        path: '/onboardingView',
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: '/registerView',
        builder: (context, state) => const RegisterView(),
      ),
    ],
  );
}
