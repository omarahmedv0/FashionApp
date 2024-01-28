import 'package:ecommerce_app/core/manager/assets_manager.dart';
import 'package:ecommerce_app/core/manager/route_manager.dart';
import 'package:ecommerce_app/core/shared/func.dart';
import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/injections.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  SharedPreferences appPrefs = getIt.get();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            left: screenSize.width * 0.04,
            top: screenSize.height * 0.08,
            right: screenSize.width * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Sign In',
                  style: AppFonts.getTitleMidFont(
                    context,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Hi! Welcome back, you\'ve been missed',
                  style: AppFonts.getCaptionFont(
                    context,
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * .07,
              ),
              customTextFormField(
                context,
                labelText: 'Email',
                hintText: 'example@gmail.com',
              ),
              SizedBox(
                height: screenSize.height * .03,
              ),
              customTextFormField(
                context,
                labelText: 'Password',
                hintText: '*************',
                suffixIcon: const Icon(
                  Icons.remove_red_eye,
                ),
              ),
              SizedBox(
                height: screenSize.height * .015,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.enterEmailForgotPassword,
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: AppFonts.getCaptionFont(
                      context,
                      fontColor: AppColors.primary,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * .03,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        appPrefs.setBool('user_logged', true);

                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          AppRoutes.layoutView,
                          (route) => false,
                        );
                      },
                      child: Text(
                        'Sign In',
                        style: AppFonts.getCaptionFont(
                          context,
                          fontColor: AppColors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenSize.height * .04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenSize.width * .2,
                    child: Divider(
                      color: AppColors.black.withOpacity(.2),
                    ),
                  ),
                  Text(
                    ' Or sign In with ',
                    style: AppFonts.getCaptionFont(
                      context,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * .2,
                    child: Divider(
                      color: AppColors.black.withOpacity(.2),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenSize.height * .04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(.5),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        IconAssetsManager.appleIcon,
                        width: screenSize.width * .07,
                        height: screenSize.width * .07,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * .05,
                  ),
                  Container(
                    padding: const EdgeInsets.all(.5),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        IconAssetsManager.googleIcon,
                        width: screenSize.width * .07,
                        height: screenSize.width * .07,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * .05,
                  ),
                  Container(
                    padding: const EdgeInsets.all(.5),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        IconAssetsManager.facebookIcon,
                        width: screenSize.width * .07,
                        height: screenSize.width * .07,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenSize.height * .04,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRoutes.signupScreen,
                    (route) => false,
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: AppFonts.getCaptionFont(
                        context,
                        fontColor: AppColors.black,
                      ),
                    ),
                    Text(
                      'Sign Up',
                      style: AppFonts.getCaptionFont(
                        context,
                        fontColor: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
