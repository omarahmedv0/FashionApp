import 'package:ecommerce_app/core/manager/route_manager.dart';
import 'package:ecommerce_app/injections.dart';
import 'package:shared_preferences/shared_preferences.dart';

String initRoute() {
  SharedPreferences sharedPreferences = getIt.get();

    print(sharedPreferences.getString('onboarding_ok'));
  if (sharedPreferences.getBool('user_logged') == true) {
    return AppRoutes.layoutView;
  } else if (sharedPreferences.getString('onboarding_ok') == 'success') {

    return AppRoutes.loginScreen;
  } else {
    return AppRoutes.welcomeScreen;
  }
}
