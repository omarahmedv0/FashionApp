import 'package:ecommerce_app/features/auth/view/screens/enter_email_forgotPassword.dart';
import 'package:ecommerce_app/features/auth/view/screens/new_password_screen.dart';
import 'package:ecommerce_app/features/auth/view/screens/login_screen.dart';
import 'package:ecommerce_app/features/auth/view/screens/signup_screen.dart';
import 'package:ecommerce_app/features/auth/view/screens/verify_code_forgot_password.dart';
import 'package:ecommerce_app/features/main/view/screens/cart_screen.dart';
import 'package:ecommerce_app/features/main/view/screens/category_screen.dart';
import 'package:ecommerce_app/features/main/view/screens/checkout_screen.dart';
import 'package:ecommerce_app/features/main/view/screens/favorite_screen.dart';
import 'package:ecommerce_app/features/main/view/screens/home_screen.dart';
import 'package:ecommerce_app/features/main/view/screens/layout_view.dart';
import 'package:ecommerce_app/features/main/view/screens/myorders_screen.dart';
import 'package:ecommerce_app/features/main/view/screens/notification_screen.dart';
import 'package:ecommerce_app/features/main/view/screens/password_manager.dart';
import 'package:ecommerce_app/features/main/view/screens/profile_screen.dart';
import 'package:ecommerce_app/features/main/view/screens/review_order_screen.dart';
import 'package:ecommerce_app/features/main/view/screens/search_screen.dart';
import 'package:ecommerce_app/features/main/view/screens/setting_screen.dart';
import 'package:ecommerce_app/features/main/view/screens/truck_order_screen.dart';
import 'package:ecommerce_app/features/onboarding/view/screen/onboarding_screen.dart';
import 'package:ecommerce_app/features/onboarding/view/screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String welcomeScreen = '/';
  static const String onboardingScreen = '/onboardingScreen';
  static const String loginScreen = '/loginScreen';
  static const String signupScreen = '/signupScreen';
  static const String newPasswordScreen = '/newPasswordScreen';
  static const String enterEmailForgotPassword = '/enterEmailForgotPassword';
  static const String verifyCodeForgotPassword = '/verifyCodeForgotPassword';
  static const String homeScreen = '/homeScreen';
  static const String favoriteScreen = '/favoriteScreen';
  static const String cartScreen = '/cartScreen';
  static const String profileScreen = '/profileScreen';
  static const String layoutView = '/layoutView';
  static const String categoryScreen = '/categoryScreen';
  static const String checkoutScreen = '/checkoutScreen';
  static const String searchScreen = '/searchScreen';
  static const String settingScreen = '/settingScreen';

  static const String notificationScreen = '/notificationScreen';
  static const String passwordManager = '/passwordManager';
  static const String myordersScreen = '/myordersScreen';

  static const String truckOrderScreen = '/truckOrderScreen';
  static const String reviewOrderScreen = '/reviewOrderScreen';

}

Map<String, Widget Function(BuildContext)> routeManager() {
  return {
    AppRoutes.welcomeScreen: (c) => WelcomeScreen(),
    AppRoutes.onboardingScreen: (c) => const OnboardingScreen(),
    AppRoutes.loginScreen: (c) => LoginScreen(),
    AppRoutes.signupScreen: (c) => SignupScreen(),
    AppRoutes.newPasswordScreen: (c) => const NewPasswordScreen(),
    AppRoutes.enterEmailForgotPassword: (c) => const EnterEmailForgotPassword(),
    AppRoutes.verifyCodeForgotPassword: (c) => const VeifyCodeForgotPassword(),
    AppRoutes.homeScreen: (c) => const HomeScreen(),
    AppRoutes.favoriteScreen: (c) => const FavoriteScreen(),
    AppRoutes.cartScreen: (c) => const CartScreen(),
    AppRoutes.profileScreen: (c) => const ProfileScreen(),
    AppRoutes.layoutView: (c) => const LayoutView(),
    AppRoutes.checkoutScreen: (c) => const CheckoutScreen(),
    AppRoutes.searchScreen: (c) => const SearchScreen(),
    AppRoutes.settingScreen: (c) => const SettingScreen(),

    AppRoutes.notificationScreen: (c) => const NotificationScreen(),
    AppRoutes.passwordManager: (c) => const PasswordManager(),
    AppRoutes.myordersScreen: (c) => const MyordersScreen(),

    AppRoutes.truckOrderScreen: (c) => const TruckOrderScreen(),
    AppRoutes.reviewOrderScreen: (c) => const ReviewOrderScreen(),

  };
}
