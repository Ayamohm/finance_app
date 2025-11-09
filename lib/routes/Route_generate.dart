import 'package:finance_app/features/onboarding_screen/onboarding_screen.dart';
import 'package:finance_app/routes/Route_.dart';
import 'package:finance_app/screens/LoginScreen.dart';
import 'package:finance_app/screens/RegisterScreen.dart';
import 'package:go_router/go_router.dart';

class RouteGenerationConfig{
  static GoRouter goRouter =GoRouter(
    initialLocation: AppRoutes.OnboardingScreen,
    routes: [
      GoRoute(
        path: AppRoutes.OnboardingScreen,
        name: AppRoutes.OnboardingScreen,
        builder: (context, state) => OnboardingScreen(),
      ),
      GoRoute(
        path: AppRoutes.LoginScreen,
        name: AppRoutes.LoginScreen,
        builder: (context, state) => Loginscreen(),
      ),
      GoRoute(
        path: AppRoutes.RegisterScreen,
        name: AppRoutes.RegisterScreen,
        builder: (context, state) => Registerscreen(),
      ),
    ]
  );
}