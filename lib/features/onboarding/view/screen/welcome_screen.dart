import 'package:ecommerce_app/core/manager/assets_manager.dart';
import 'package:ecommerce_app/core/manager/route_manager.dart';
import 'package:ecommerce_app/core/shared/func.dart';
import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:ecommerce_app/core/styles/app_fonts.dart';
import 'package:ecommerce_app/injections.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});
  SharedPreferences appPrefs = getIt.get<SharedPreferences>();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: screenSize.height * 0.05,
                right: screenSize.height * 0.02,
                left: screenSize.height * 0.02,
              ),
              child: SizedBox(
                height: screenSize.height / 2,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(
                                  100,
                                ),
                                topRight: Radius.circular(
                                  100,
                                ),
                                bottomLeft: Radius.circular(
                                  100,
                                ),
                                bottomRight: Radius.circular(
                                  100,
                                ),
                              ),
                              child: Image.asset(
                                ImageAssetsManager.welcomeImage1,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * .03,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(
                                        80,
                                      ),
                                      topRight: Radius.circular(
                                        80,
                                      ),
                                      bottomLeft: Radius.circular(
                                        80,
                                      ),
                                      bottomRight: Radius.circular(
                                        80,
                                      ),
                                    ),
                                    child: Image.asset(
                                      ImageAssetsManager.welcomeImage2,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(180),
                              child: Image.asset(
                                ImageAssetsManager.welcomeImage3,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: screenSize.height * 0.04,
                right: screenSize.height * 0.02,
                left: screenSize.height * 0.02,
              ),
              child: Column(
                children: [
                  Text(
                    'The Fashion App That Makes You Look Your Best',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenSize.width * .07,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur',
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: AppFonts.getCaptionFont(context),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.025,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            appPrefs.setString('onboarding_ok', 'success');

                            Navigator.pushNamed(
                              context,
                              AppRoutes.onboardingScreen,
                            );
                          },
                          child: Text(
                            'Let\'s Get Started',
                            style: TextStyle(
                              fontSize: screenSize.width * .04,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenSize.height * 0.015,
                  ),
                  InkWell(
                    onTap: () {
                      appPrefs.setString('onboarding_ok', 'success');
                      print(appPrefs.getString('onboarding_ok'));
                      Navigator.pushNamed(
                        context,
                        AppRoutes.loginScreen,
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? ',
                          style: AppFonts.getCaptionFont(
                            context,
                            fontColor: AppColors.black,
                          ),
                        ),
                        Text(
                          'Sign In',
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
          ],
        ),
      ),
    );
  }
}
